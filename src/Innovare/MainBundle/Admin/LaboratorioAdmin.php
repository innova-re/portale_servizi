<?php
// src/Innovare/MainBundle/Admin/LaboratorioAdmin.php

namespace Innovare\MainBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class LaboratorioAdmin extends Admin
{
    // Fields to be shown on create/edit forms
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('nome')
            ->add('descrizione')
            ->add('idAfferenza')            
            ->add('idEnte')
        ;
    }

    // Fields to be shown on filter forms
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('nome')
            ->add('descrizione')
            ->add('idAfferenza')            
            ->add('idEnte')
        ;
    }

    // Fields to be shown on lists
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('nome')
            ->add('slug')
            ->add('descrizione')
            ->add('idAfferenza')            
            ->add('idEnte')
        ;
    }
}
