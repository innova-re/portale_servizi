<?php

namespace Innovare\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Settore
 *
 * @ORM\Table(name="settore")
 * @ORM\Entity
 */
class Settore
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_settore", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idSettore;

    /**
     * @var string
     *
     * @ORM\Column(name="settore", type="string", length=250, nullable=false)
     */
    private $settore;

    /**
     * @var string
     *
     * @ORM\Column(name="settore_tresto", type="text", nullable=false)
     */
    private $settoreTresto;



    /**
     * Get idSettore
     *
     * @return integer 
     */
    public function getIdSettore()
    {
        return $this->idSettore;
    }

    /**
     * Set settore
     *
     * @param string $settore
     * @return Settore
     */
    public function setSettore($settore)
    {
        $this->settore = $settore;

        return $this;
    }

    /**
     * Get settore
     *
     * @return string 
     */
    public function getSettore()
    {
        return $this->settore;
    }

    /**
     * Set settoreTresto
     *
     * @param string $settoreTresto
     * @return Settore
     */
    public function setSettoreTresto($settoreTresto)
    {
        $this->settoreTresto = $settoreTresto;

        return $this;
    }

    /**
     * Get settoreTresto
     *
     * @return string 
     */
    public function getSettoreTresto()
    {
        return $this->settoreTresto;
    }

    public function __toString()
    {
        return $this->settoreTresto;
    }
}
