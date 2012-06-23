<?php

class UsersController extends AppController {

	var $components = array('Email');
	
    function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('signup', 'forgot');
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
	
	public function forgot() {
		if(!empty($this->data)) {
			//$this->User->find('first', array('conditions' => array('User.email' => $this->data)));
			$user = $this->User->findByEmail($this->data['User']['email']);
			if($user) {
				$user['User']['tmp_password'] = $this->User->createTempPassword(7);
				$user['User']['password'] = $this->Auth->password($user['User']['tmp_password']);
				if($this->User->save($user, false)) {
					$this->__sendPasswordEmail($user, $user['User']['tmp_password']);
					$this->Session->setFlash('An email has been sent with your new password.');
					$this->redirect($this->referer());
				}
			} else {
				$this->Session->setFlash('No user was found with the submitted email address.');
			}
		}
	}
	
	public function __sendPasswordEmail($user, $password) {
		if ($user === false) {
			debug(__METHOD__." failed to retrieve User data for user.id: {$user['User']['id']}");
			return false;
		}
		$this->set('user', $user['User']);
		$this->set('password', $password);
		$this->Email->to = $user['User']['email'];
		$this->Email->bcc = array('History of CG Accounts <accounts@historyofcg.com>');
		$this->Email->subject = 'Password Change Request';
		$this->Email->from = 'noreply@historyofcg.com';
		$this->Email->template = 'users_'.$this->action;
		$this->Email->sendAs = 'both'; // you probably want to use both
		$this->Cookie->write('Referer', $this->referer(), true, '+2 weeks');
		$this->Session->setFlash('A new password has been sent to your supplied email address.');
		return $this->Email->send();
	}
}
