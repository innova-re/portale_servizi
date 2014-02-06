<?php

namespace Innovare\MainBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class StrumentiType extends AbstractType
{
        /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('tipologia')
            ->add('marca')
            ->add('modello')
            ->add('equipaggiamento')
            ->add('idLaboratorio')
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Innovare\MainBundle\Entity\Strumenti'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'innovare_mainbundle_strumenti';
    }
}
