<?php

class UsersController extends AppController {

	var $components = array('Auth', 'Email', "Session");
	var $helpers=array("Html","Form","Session");
	
    function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('signup', 'forgot', 'recover', 'verify');
    }


    // For adding permissions to ARO's
    public function initDB() {
        $group = $this->User->Group;
        //Allow admins to everything
        $group->id = 1;
        $this->Acl->allow($group, 'controllers');

        //allow users to only add and edit on posts and widgets
        $group->id = 2;
        $this->Acl->allow($group, 'controllers');
        /*
        $this->Acl->deny($group, 'controllers');
        $this->Acl->allow($group, 'controllers/Entries/add');
        $this->Acl->allow($group, 'controllers/Entries/edit');
        $this->Acl->allow($group, 'controllers/Entries/get');
        $this->Acl->allow($group, 'controllers/Tags/fetch');
        $this->Acl->allow($group, 'controllers/Stories/add_or_edit');
        $this->Acl->allow($group, 'controllers/Connections/add');
        */
        //we add an exit to avoid an ugly "missing views" error message
        echo "all done";
        exit;
    }

    public function signup() {
        if ($this->request->is('post')) {
            $this->User->create();

            // save user and login
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('Your account has been created'));

                if($this->Auth->login()) {
                    // if this is the /login or /signup page, redirect to home
                    // otherwise we want to stay on the referral page
                    if( $this->referer(null, true) == Router::url(array('controller'=>'sessions', 'action'=>'create')) ||
                        $this->referer(null, true) == Router::url(array('controller'=>'users', 'action'=>'signup')) ) {
                        $this->redirect('/');
                    }
                    else {
                        $this->redirect( $this->Auth->redirect( $this->referer() ) );
                    }
                }
            }
            else {
                $this->Session->setFlash(
                    __('Your newly created account could not be saved'));
            }
        }

        $this->set('title_for_layout', 'Signup');
    }


    public function index() {
        $this->User->recursive = 0;
        $this->set('users', $this->paginate());
    }

    public function view($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        $this->set('user', $this->User->read(null, $id));
    }

    public function add() {
        if ($this->request->is('post')) {
            $this->User->create();
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('The user has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
            }
        }
        $groups = $this->User->Group->find('list');
        $this->set(compact('groups'));
    }

    public function edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('The user has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
        }
        $groups = $this->User->Group->find('list');
        $this->set(compact('groups'));
    }

    public function delete($id = null) {
        if (!$this->request->is('post')) {
            throw new MethodNotAllowedException();
        }
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if ($this->User->delete()) {
            $this->Session->setFlash(__('User deleted'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('User was not deleted'));
        $this->redirect(array('action' => 'index'));
    }
	
    function account()
    {
        $this->User->useValidationRules('ChangePassword');
        $this->User->validate['password_confirm']['compare']['rule'] =
            array('password_match', 'password', false);

        $this->User->set($this->data);
        if (!empty($this->data) && $this->User->validates()) {
            $this->Session->setFlash('Your password has been updated');
            $this->User->id = $this->Auth->user('id');
            $this->User->saveField('password',
                $this->Auth->password($this->data['User']['password']));
            $this->redirect(array('action' => 'account'));
        }

        $current_user = $this->User->findById($this->Auth->user('id'));
        $this->set('current_user', $current_user);
    }
	
	function forgetpwd(){
        //$this->layout="signup";
        $this->User->recursive=-1;
        if(!empty($this->data))
        {
            if(empty($this->data['User']['email']))
            {
                $this->Session->setFlash('Please Provide Your Email Adress that You used to Register with Us');
            }
            else
            {
                $email=$this->data['User']['email'];
                $fu=$this->User->find('first',array('conditions'=>array('User.email'=>$email)));
                if($fu)
                {
                    //debug($fu);
                    if($fu['User']['active'])
                    {
                        $key = Security::hash(String::uuid(),'sha512',true);
                        $hash=sha1($fu['User']['username'].rand(0,100));
                        $url = Router::url( array('controller'=>'users','action'=>'reset'), true ).'/'.$key.'#'.$hash;
                        $ms=$url;
                        $ms=wordwrap($ms,1000);
                        //debug($url);
                        $fu['User']['tokenhash']=$key;
                        $this->User->id=$fu['User']['id'];
                        if($this->User->saveField('tokenhash',$fu['User']['tokenhash'])){                        
                             
                            //============Email================//
                            /* SMTP Options */ 
                            $this->Email->smtpOptions = array(
                                'port'=>'25',
                                'timeout'=>'30',
                                'host' => 'mail.example.com',
                                'username'=>'accounts+example.com',
                                'password'=>'your password'
                                  );
                              $this->Email->template = 'resetpw';
                            $this->Email->from    = 'Your Email <accounts@example.com>';
                            $this->Email->to      = $fu['User']['name'].'<'.$fu['User']['email'].'>';
                            $this->Email->subject = 'Reset Your Example.com Password';
                            $this->Email->sendAs = 'both';
               
                                   
                                $this->Email->delivery = 'smtp';
                                $this->set('ms', $ms);
                                $this->Email->send();
                                $this->set('smtp_errors', $this->Email->smtpError);
                            $this->Session->setFlash(__('Check Your Email To Reset your password', true));        
                             
                            //============EndEmail=============//    
                        }
                        else{
                            $this->Session->setFlash("Error Generating Reset link");                            
                        }                        
                    }
                    else
                    {
                        $this->Session->setFlash('This Account is not Active yet.Check Your mail to activate it');
                    }
                }
                else
                {
                    $this->Session->setFlash('Email does Not Exist');
                }
            }
        }
    }
	
	function reset($token=null){
        //$this->layout="Login";
        $this->User->recursive=-1;
        if(!empty($token)){
            $u=$this->User->findBytokenhash($token);                        
            if($u){                
                $this->User->id=$u['User']['id'];                                                
                if(!empty($this->data)){                    
                    $this->User->data=$this->data;
                    $this->User->data['User']['username']=$u['User']['username'];                    
                    $new_hash=sha1($u['User']['username'].rand(0,100));//created token
                    $this->User->data['User']['tokenhash']=$new_hash;                    
                    if($this->User->validates(array('fieldList'=>array('password','password_confirm')))){                        
                        if($this->User->save($this->User->data))
                        {
                            $this->Session->setFlash('Password Has been Updated');
                            $this->redirect(array('controller'=>'users','action'=>'login'));
                        }
                         
                    }
                    else{
                         
                        $this->set('errors',$this->User->invalidFields());                        
                    }
                }
            }
            else
            {
                $this->Session->setFlash('Token Corrupted,,Please Retry.the reset link work only for once.');
            }
        }
         
        else{
            $this->redirect('/');    
        }    
    }
}
