<?php

class TagsController extends AppController {
    
    public function fetch($s=null) {
        // do not render any views for this action
        $this->autoRender = false;
        // check if a querystring was passed in
        if(!isset($s) && isset($_GET['q'])) {
            $s = $_GET['q'];
        }

        if(!empty($s)) {
            // find all tags that are approved and like given string
            $results = $this->Tag->find('all', array(
                'limit' => 10,
                'recursive' => 0,
                'fields' => array('id', 'name'),
                'conditions' => array(
                    'Tag.name LIKE' => '%'.$s.'%',
                    'Tag.approved' => 1
                )
            ));

            $tmp = array();
            foreach( $results as $r) {
                $tmp[] = $r['Tag'];
            }
            echo json_encode($tmp);
        }
    }

}
