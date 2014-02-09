<?php

namespace Innovare\MainBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Innovare\MainBundle\Entity\Ente;
use Innovare\MainBundle\Form\EnteType;

/**
 * Ente controller.
 *
 * @Route("/ente")
 */
class EnteController extends Controller
{

    /**
     * Lists all Ente entities.
     *
     * @Route("/", name="ente")
     * @Method("GET")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('InnovareMainBundle:Ente')->findAll();

        return array(
            'entities' => $entities,
        );
    }
    /**
     * Creates a new Ente entity.
     *
     * @Route("/", name="ente_create")
     * @Method("POST")
     * @Template("InnovareMainBundle:Ente:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity = new Ente();
        $form = $this->createCreateForm($entity);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('ente_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
    * Creates a form to create a Ente entity.
    *
    * @param Ente $entity The entity
    *
    * @return \Symfony\Component\Form\Form The form
    */
    private function createCreateForm(Ente $entity)
    {
        $form = $this->createForm(new EnteType(), $entity, array(
            'action' => $this->generateUrl('ente_create'),
            'method' => 'POST',
        ));

        $form->add('submit', 'submit', array('label' => 'Create'));

        return $form;
    }

    /**
     * Displays a form to create a new Ente entity.
     *
     * @Route("/new", name="ente_new")
     * @Method("GET")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Ente();
        $form   = $this->createCreateForm($entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Finds and displays a Ente entity.
     *
     * @Route("/{id}", name="ente_show")
     * @Method("GET")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('InnovareMainBundle:Ente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Ente entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to edit an existing Ente entity.
     *
     * @Route("/{id}/edit", name="ente_edit")
     * @Method("GET")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('InnovareMainBundle:Ente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Ente entity.');
        }

        $editForm = $this->createEditForm($entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
    * Creates a form to edit a Ente entity.
    *
    * @param Ente $entity The entity
    *
    * @return \Symfony\Component\Form\Form The form
    */
    private function createEditForm(Ente $entity)
    {
        $form = $this->createForm(new EnteType(), $entity, array(
            'action' => $this->generateUrl('ente_update', array('id' => $entity->getId())),
            'method' => 'PUT',
        ));

        $form->add('submit', 'submit', array('label' => 'Update'));

        return $form;
    }
    /**
     * Edits an existing Ente entity.
     *
     * @Route("/{id}", name="ente_update")
     * @Method("PUT")
     * @Template("InnovareMainBundle:Ente:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('InnovareMainBundle:Ente')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Ente entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createEditForm($entity);
        $editForm->handleRequest($request);

        if ($editForm->isValid()) {
            $em->flush();

            return $this->redirect($this->generateUrl('ente_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }
    /**
     * Deletes a Ente entity.
     *
     * @Route("/{id}", name="ente_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('InnovareMainBundle:Ente')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Ente entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('ente'));
    }

    /**
     * Creates a form to delete a Ente entity by id.
     *
     * @param mixed $id The entity id
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm($id)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('ente_delete', array('id' => $id)))
            ->setMethod('DELETE')
            ->add('submit', 'submit', array('label' => 'Delete'))
            ->getForm()
        ;
    }
}
