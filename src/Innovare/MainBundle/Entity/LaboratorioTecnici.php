<?php

namespace Innovare\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * LaboratorioTecnici
 *
 * @ORM\Table(name="laboratorio_tecnici", indexes={@ORM\Index(name="FK_laboratorio_tecnici_1", columns={"id_laboratorio"})})
 * @ORM\Entity
 */
class LaboratorioTecnici
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nome", type="string", length=45, nullable=false)
     */
    private $nome;

    /**
     * @var string
     *
     * @ORM\Column(name="cognome", type="string", length=45, nullable=false)
     */
    private $cognome;

    /**
     * @var string
     *
     * @ORM\Column(name="matricola", type="string", length=20, nullable=true)
     */
    private $matricola;

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
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nome
     *
     * @param string $nome
     * @return LaboratorioTecnici
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
     * Set cognome
     *
     * @param string $cognome
     * @return LaboratorioTecnici
     */
    public function setCognome($cognome)
    {
        $this->cognome = $cognome;

        return $this;
    }

    /**
     * Get cognome
     *
     * @return string 
     */
    public function getCognome()
    {
        return $this->cognome;
    }

    /**
     * Set matricola
     *
     * @param string $matricola
     * @return LaboratorioTecnici
     */
    public function setMatricola($matricola)
    {
        $this->matricola = $matricola;

        return $this;
    }

    /**
     * Get matricola
     *
     * @return string 
     */
    public function getMatricola()
    {
        return $this->matricola;
    }

    /**
     * Set descrizione
     *
     * @param string $descrizione
     * @return LaboratorioTecnici
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
     * @return LaboratorioTecnici
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
     * @return LaboratorioTecnici
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
