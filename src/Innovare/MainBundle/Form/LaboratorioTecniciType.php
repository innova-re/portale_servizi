<?php

namespace Innovare\MainBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class LaboratorioTecniciType extends AbstractType
{
        /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nome')
            ->add('cognome')
            ->add('matricola')
            ->add('descrizione')
            ->add('note')
            ->add('idLaboratorio')
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Innovare\MainBundle\Entity\LaboratorioTecnici'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'innovare_mainbundle_laboratoriotecnici';
    }
}
