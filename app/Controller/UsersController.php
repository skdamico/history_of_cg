<?php

class UsersController extends AppController {
    function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('signup');
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
                    return $this->redirect($this->Auth->redirect()); // redirect
                }
            }
            else {
                $this->Session->setFlash(
                    __('Your newly created account could not be saved'));
            }
        }
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
}
