<?php

namespace Innovare\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * LaboratorioServizi
 *
 * @ORM\Table(name="laboratorio_servizi", indexes={@ORM\Index(name="FK_laboratorio_servizi_1", columns={"id_laboratorio"})})
 * @ORM\Entity
 */
class LaboratorioServizi
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_servizi", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idServizi;

    /**
     * @var string
     *
     * @ORM\Column(name="nome", type="string", length=200, nullable=false)
     */
    private $nome;

    /**
     * @var string
     *
     * @ORM\Column(name="descrizione", type="string", length=200, nullable=true)
     */
    private $descrizione;

    /**
     * @var string
     *
     * @ORM\Column(name="note", type="string", length=200, nullable=true)
     */
    private $note;

    /**
     * @var \Innovare\MainBundle\Entity\Laboratorio
     *
     * @ORM\ManyToOne(targetEntity="Innovare\MainBundle\Entity\Laboratorio")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_laboratorio", referencedColumnName="id_laboratorio")
     * })
     */
    private $idLaboratorio;



    /**
     * Get idServizi
     *
     * @return integer 
     */
    public function getIdServizi()
    {
        return $this->idServizi;
    }

    /**
     * Set nome
     *
     * @param string $nome
     * @return LaboratorioServizi
     */
    public function setNome($nome)
    {
        $this->nome = $nome;

        return $this;
    }

    /**
     * Get nome
     *
     * @return string 
     */
    public function getNome()
    {
        return $this->nome;
    }

    /**
     * Set descrizione
     *
     * @param string $descrizione
     * @return LaboratorioServizi
     */
    public function setDescrizione($descrizione)
    {
        $this->descrizione = $descrizione;

        return $this;
    }

    /**
     * Get descrizione
     *
     * @return string 
     */
    public function getDescrizione()
    {
        return $this->descrizione;
    }

    /**
     * Set note
     *
     * @param string $note
     * @return LaboratorioServizi
     */
    public function setNote($note)
    {
        $this->note = $note;

        return $this;
    }

    /**
     * Get note
     *
     * @return string 
     */
    public function getNote()
    {
        return $this->note;
    }

    /**
     * Set idLaboratorio
     *
     * @param \Innovare\MainBundle\Entity\Laboratorio $idLaboratorio
     * @return LaboratorioServizi
     */
    public function setIdLaboratorio(\Innovare\MainBundle\Entity\Laboratorio $idLaboratorio = null)
    {
        $this->idLaboratorio = $idLaboratorio;

        return $this;
    }

    /**
     * Get idLaboratorio
     *
     * @return \Innovare\MainBundle\Entity\Laboratorio 
     */
    public function getIdLaboratorio()
    {
        return $this->idLaboratorio;
    }
}
