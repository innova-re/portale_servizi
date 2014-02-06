<?php

namespace Innovare\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Strumenti
 *
 * @ORM\Table(name="strumenti")
 * @ORM\Entity
 */
class Strumenti
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_strumento", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idStrumento;

    /**
     * @var string
     *
     * @ORM\Column(name="tipologia", type="string", length=250, nullable=true)
     */
    private $tipologia;

    /**
     * @var string
     *
     * @ORM\Column(name="marca", type="string", length=250, nullable=true)
     */
    private $marca;

    /**
     * @var string
     *
     * @ORM\Column(name="modello", type="string", length=250, nullable=true)
     */
    private $modello;

    /**
     * @var integer
     *
     * @ORM\Column(name="equipaggiamento", type="integer", nullable=false)
     */
    private $equipaggiamento;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Innovare\MainBundle\Entity\Laboratorio", mappedBy="idStrumento")
     */
    private $idLaboratorio;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->idLaboratorio = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Get idStrumento
     *
     * @return integer 
     */
    public function getIdStrumento()
    {
        return $this->idStrumento;
    }

    /**
     * Set tipologia
     *
     * @param string $tipologia
     * @return Strumenti
     */
    public function setTipologia($tipologia)
    {
        $this->tipologia = $tipologia;

        return $this;
    }

    /**
     * Get tipologia
     *
     * @return string 
     */
    public function getTipologia()
    {
        return $this->tipologia;
    }

    /**
     * Set marca
     *
     * @param string $marca
     * @return Strumenti
     */
    public function setMarca($marca)
    {
        $this->marca = $marca;

        return $this;
    }

    /**
     * Get marca
     *
     * @return string 
     */
    public function getMarca()
    {
        return $this->marca;
    }

    /**
     * Set modello
     *
     * @param string $modello
     * @return Strumenti
     */
    public function setModello($modello)
    {
        $this->modello = $modello;

        return $this;
    }

    /**
     * Get modello
     *
     * @return string 
     */
    public function getModello()
    {
        return $this->modello;
    }

    /**
     * Set equipaggiamento
     *
     * @param integer $equipaggiamento
     * @return Strumenti
     */
    public function setEquipaggiamento($equipaggiamento)
    {
        $this->equipaggiamento = $equipaggiamento;

        return $this;
    }

    /**
     * Get equipaggiamento
     *
     * @return integer 
     */
    public function getEquipaggiamento()
    {
        return $this->equipaggiamento;
    }

    /**
     * Add idLaboratorio
     *
     * @param \Innovare\MainBundle\Entity\Laboratorio $idLaboratorio
     * @return Strumenti
     */
    public function addIdLaboratorio(\Innovare\MainBundle\Entity\Laboratorio $idLaboratorio)
    {
        $this->idLaboratorio[] = $idLaboratorio;

        return $this;
    }

    /**
     * Remove idLaboratorio
     *
     * @param \Innovare\MainBundle\Entity\Laboratorio $idLaboratorio
     */
    public function removeIdLaboratorio(\Innovare\MainBundle\Entity\Laboratorio $idLaboratorio)
    {
        $this->idLaboratorio->removeElement($idLaboratorio);
    }

    /**
     * Get idLaboratorio
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getIdLaboratorio()
    {
        return $this->idLaboratorio;
    }
}
