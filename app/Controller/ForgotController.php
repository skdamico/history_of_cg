<?php
class ForgotController extends AppController {
	
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
	
	public function forgot() {
		if(!empty($this->data)) {
			$this->User->contain();
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
