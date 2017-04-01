<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Assembly extends Application
{

    /**
     * First for our app
     */
    public function index()
    {
        // this is the view we want shown
        $this->data['pagebody'] = 'assemblyView';

        $role = $this->session->userdata('userrole');
        $this->data['pagetitle'] = 'your user role is '. $role . '';

        if ($role == "guest" || $role=="worker") {
            $this->data['pagebody'] = 'emptyforrole';
        } else {
            $tops = $this->parts->getType("head");
            $this->data['top'] = $tops;

            $torsos = $this->parts->getType("torso");
            $this->data['torso'] = $torsos;

            $bottoms = $this->parts->getType("bottom");
            $this->data['bottom'] = $bottoms;
        }

        $this->render();

    }

    public function detail($id)
    {
        // this is the view we want shown
        $this->data['pagebody'] = 'justone';

        // build the list of authors, to pass on to our view
        $source = $this->parts->get($id);
        $this->data = array_merge($this->data, $source);
        $this->render();

    }




}
