<?php

namespace Innovare\MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
		return $this->render('InnovareMainBundle:Default:index.html.twig', array('name' => $name));
    }

    public function addAction()
    {

    	$fomr = $this->createForm
		return $this->render('InnovareMainBundle:Default:add.html.twig', array(

		));
    }
}
