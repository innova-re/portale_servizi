<?php

namespace Innovare\MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Innovare\MainBundle\Entity\Laboratorio;
use Innovare\MainBundle\Form\LaboratorioType;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('InnovareMainBundle:Default:index.html.twig', array('name' => $name));
    }

    public function addLaboratorioAction()
    {
    	$em = $this->getDoctrine()->getManager();
    	$form = $this->createForm(new LaboratorioType(), new Laboratorio());
    	$request = $this->getRequest();

        if($request->isMethod("post")){
            $form->bind($request);
            $em->persist($form->getData());
            $em->flush();

            return $this->redirect($this->generateUrl("innovare_main_addLaboratorio"));
        }

		return $this->render('InnovareMainBundle:Default:addLaboratorio.html.twig', array(
			'form' => $form->createView(),
		));
    }
}
