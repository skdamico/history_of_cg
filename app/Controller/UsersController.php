<?php

class UsersController extends AppController {
  function beforeFilter() {
    parent::beforeFilter();
    // Tell the Auth component that the sign-up action is accessible
    // without being logged in.
    $this->Auth->allow('signup');
  }

  public function signup() {
    if ($this->request->is('post')) {
      $this->User->create();

      if ($this->User->save($this->request->data)) {
        $this->Session->setFlash(__('Your account has been created'));
        $this->Auth->login($this->request->data); // manually log in the user
        return $this->redirect($this->Auth->redirect()); // redirect
      }
      else {
        $this->Session->setFlash(
          __('Your newly created account could not be saved'));
      }
    }
  }
}
