<?php

namespace Innovare\MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Innovare\MainBundle\Entity\Afferenza;
use Innovare\MainBundle\Entity\Laboratorio;
use Innovare\MainBundle\Entity\Servizi;
use Innovare\MainBundle\Entity\Strumenti;
use Innovare\MainBundle\Entity\Ente;
use Innovare\MainBundle\Entity\LaboratorioServizi;
use Innovare\MainBundle\Entity\LaboratorioTecnici;
use Innovare\MainBundle\Entity\Settore;

use Innovare\MainBundle\Form\AfferenzaType;
use Innovare\MainBundle\Form\LaboratorioType;
use Innovare\MainBundle\Form\ServiziType;
use Innovare\MainBundle\Form\StrumentiType;
use Innovare\MainBundle\Form\EnteType;
use Innovare\MainBundle\Form\LaboratorioServiziType;
use Innovare\MainBundle\Form\LaboratorioTecniciType;
use Innovare\MainBundle\Form\SettoreType;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('InnovareMainBundle:Default:index.html.twig');
    }

    public function addAction($name)
    {
    	$em = $this->getDoctrine()->getManager();

        // TODO impreve this code
        if ($name == 'Strumenti') {
            $entity =  new Strumenti();
            $formType = new StrumentiType();
        } elseif ($name == 'Laboratorio') {
            $entity =  new Laboratorio();
            $formType = new LaboratorioType();
        } elseif ($name == 'Servizi') {
            $entity =  new Servizi();
            $formType = new ServiziType();
        } elseif ($name == 'Afferenza') {
            $entity =  new Afferenza();
            $formType = new AfferenzaType();
        } elseif ($name == 'Ente') {
            $entity =  new Ente();
            $formType = new EnteType();
        } elseif ($name == 'LaboratorioServizi') {
            $entity =  new LaboratorioServizi();
            $formType = new LaboratorioServiziType();
        } elseif ($name == 'LaboratorioTecnici') {
            $entity =  new LaboratorioTecnici();
            $formType = new LaboratorioTecniciType();
        } elseif ($name == 'Settore') {
            $entity =  new Settore();
            $formType = new SettoreType();
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
