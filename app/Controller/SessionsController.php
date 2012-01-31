<?php

class SessionsController extends AppController {

  // The SessionsController will use the User model
  var $uses = array("User");

  function beforeFilter() {
    parent::beforeFilter();

    // Tell the Auth controller that the 'create' action is accessible 
    // without being logged in.
    $this->Auth->allow('create');
  }

  public function create() {
    if($this->request->is('post')) {
      if($this->Auth->login()) {
        // the redirect() function in the Auth class redirects us
        // to the url we set up in the AppController.
        return $this->redirect( $this->Auth->redirect() );
      }
      else {
        $this->Session->setFlash(__('Email or password is incorrect',true));
      }
    }
  }

  public function destroy() {
    $this->Session->setFlash('Successfully logged out');
    // The following line redirects us to the page we set up in AppController
    // after being successfully logged out.
    $this->redirect( $this->Auth->logout() );
  }
}
