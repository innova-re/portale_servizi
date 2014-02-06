<?php

namespace Innovare\MainBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class LaboratorioType extends AbstractType
{
        /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nome')
            ->add('centro')
            ->add('afferenza')
            ->add('facolta')
            ->add('dipartimento')
            ->add('sezione')
            ->add('sede')
            ->add('sedeCitta')
            ->add('gpsLat')
            ->add('gpsLng')
            ->add('ubicazione')
            ->add('descrizione')
            ->add('telefono')
            ->add('web')
            ->add('info')
            ->add('responsabile')
            ->add('referente')
            ->add('attivitaEsterna')
            ->add('attivitaEsternaTipol')
            ->add('regolamAccesso')
            ->add('regolamAccessoAtti')
            ->add('idSettore')
            ->add('idEnte')
            ->add('idAfferenza')
            ->add('idStrumento')
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Innovare\MainBundle\Entity\Laboratorio'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'innovare_mainbundle_laboratorio';
    }
}
