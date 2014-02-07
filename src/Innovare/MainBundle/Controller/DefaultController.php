<?php

namespace Innovare\MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Innovare\MainBundle\Entity\Laboratorio;
use Innovare\MainBundle\Entity\Servizi;
use Innovare\MainBundle\Entity\Strumenti;
use Innovare\MainBundle\Form\LaboratorioType;
use Innovare\MainBundle\Form\ServiziType;
use Innovare\MainBundle\Form\StrumentiType;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('InnovareMainBundle:Default:index.html.twig', array('name' => $name));
    }

    public function addAction($name)
    {
    	$em = $this->getDoctrine()->getManager();

        if ($name == 'Strumenti') {
            $entity =  new Strumenti();
            $formType = new StrumentiType();
        } elseif ($name == 'Laboratorio') {
            $entity =  new Laboratorio();
            $formType = new LaboratorioType();
        } else {
            $entity =  new Servizi();
            $formType = new ServiziType();
        }

        $form = $this->createForm($formType, $entity);
    	$request = $this->getRequest();

        if($request->isMethod("post")){
            $form->bind($request);
            $em->persist($form->getData());
            $em->flush();

            return $this->redirect($this->generateUrl("innovare_main_add"));
        }

		return $this->render('InnovareMainBundle:Default:add.html.twig', array(
			'form' => $form->createView()
		));
    }
}
