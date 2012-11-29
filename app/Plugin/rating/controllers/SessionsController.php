<?php

class SessionsController extends AppController {

  // The SessionsController will use the User model
  var $uses = array("User");

  function beforeFilter() {
    parent::beforeFilter();

    // Tell the Auth controller that the 'create' action is accessible 
    // without being logged in.
    $this->Auth->allow('create','destroy');
  }

  public function create() {
    if($this->request->is('post')) {
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
        else {
            $this->Session->setFlash(__('Email or password is incorrect',true));
        }
    }

    $this->set('title_for_layout', 'Login');
  }

  public function destroy() {
    $this->Session->setFlash('Successfully logged out');
    // The following line redirects us to the page we set up in AppController
    // after being successfully logged out.
    $this->redirect( $this->Auth->logout() );
  }
}
