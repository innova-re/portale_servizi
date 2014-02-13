<?php

namespace Innovare\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('InnovareUserBundle:Default:index.html.twig', array('name' => $name));
    }
}
