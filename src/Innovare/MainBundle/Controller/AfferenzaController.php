<?php

namespace Innovare\MainBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Innovare\MainBundle\Entity\Afferenza;
use Innovare\MainBundle\Form\AfferenzaType;

/**
 * Afferenza controller.
 *
 * @Route("/afferenza")
 */
class AfferenzaController extends Controller
{

    /**
     * Lists all Afferenza entities.
     *
     * @Route("/", name="afferenza")
     * @Method("GET")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('InnovareMainBundle:Afferenza')->findAll();

        return array(
            'entities' => $entities,
        );
    }
    /**
     * Creates a new Afferenza entity.
     *
     * @Route("/", name="afferenza_create")
     * @Method("POST")
     * @Template("InnovareMainBundle:Afferenza:new.html.twig")
     */
    public function createAction(Request $request)
    {
        $entity = new Afferenza();
        $form = $this->createCreateForm($entity);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('afferenza_show', array('id' => $entity->getId())));
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
    * Creates a form to create a Afferenza entity.
    *
    * @param Afferenza $entity The entity
    *
    * @return \Symfony\Component\Form\Form The form
    */
    private function createCreateForm(Afferenza $entity)
    {
        $form = $this->createForm(new AfferenzaType(), $entity, array(
            'action' => $this->generateUrl('afferenza_create'),
            'method' => 'POST',
        ));

        $form->add('submit', 'submit', array('label' => 'Create'));

        return $form;
    }

    /**
     * Displays a form to create a new Afferenza entity.
     *
     * @Route("/new", name="afferenza_new")
     * @Method("GET")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Afferenza();
        $form   = $this->createCreateForm($entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView(),
        );
    }

    /**
     * Finds and displays a Afferenza entity.
     *
     * @Route("/{id}", name="afferenza_show")
     * @Method("GET")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('InnovareMainBundle:Afferenza')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Afferenza entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Displays a form to edit an existing Afferenza entity.
     *
     * @Route("/{id}/edit", name="afferenza_edit")
     * @Method("GET")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('InnovareMainBundle:Afferenza')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Afferenza entity.');
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
    * Creates a form to edit a Afferenza entity.
    *
    * @param Afferenza $entity The entity
    *
    * @return \Symfony\Component\Form\Form The form
    */
    private function createEditForm(Afferenza $entity)
    {
        $form = $this->createForm(new AfferenzaType(), $entity, array(
            'action' => $this->generateUrl('afferenza_update', array('id' => $entity->getId())),
            'method' => 'PUT',
        ));

        $form->add('submit', 'submit', array('label' => 'Update'));

        return $form;
    }
    /**
     * Edits an existing Afferenza entity.
     *
     * @Route("/{id}", name="afferenza_update")
     * @Method("PUT")
     * @Template("InnovareMainBundle:Afferenza:edit.html.twig")
     */
    public function updateAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('InnovareMainBundle:Afferenza')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Afferenza entity.');
        }

        $deleteForm = $this->createDeleteForm($id);
        $editForm = $this->createEditForm($entity);
        $editForm->handleRequest($request);

        if ($editForm->isValid()) {
            $em->flush();

            return $this->redirect($this->generateUrl('afferenza_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }
    /**
     * Deletes a Afferenza entity.
     *
     * @Route("/{id}", name="afferenza_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, $id)
    {
        $form = $this->createDeleteForm($id);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('InnovareMainBundle:Afferenza')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Afferenza entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('afferenza'));
    }

    /**
     * Creates a form to delete a Afferenza entity by id.
     *
     * @param mixed $id The entity id
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm($id)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('afferenza_delete', array('id' => $id)))
            ->setMethod('DELETE')
            ->add('submit', 'submit', array('label' => 'Delete'))
            ->getForm()
        ;
    }
}
