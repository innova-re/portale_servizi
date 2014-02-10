<?php

namespace Innovare\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Laboratorio2
 *
 * @ORM\Table(name="laboratorio2", indexes={@ORM\Index(name="FK_laboratorio2_1", columns={"id_ente"}), @ORM\Index(name="FK_laboratorio2_2", columns={"id_afferenza"})})
 * @ORM\Entity
 */
class Laboratorio2
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
     * @var integer
     *
     * @ORM\Column(name="id_settore", type="integer", nullable=true)
     */
    private $idSettore;

    /**
     * @var string
     *
     * @ORM\Column(name="nome", type="string", length=250, nullable=false)
     */
    private $nome;

    /**
     * @var string
     *
     * @ORM\Column(name="centro", type="string", length=2, nullable=true)
     */
    private $centro;

    /**
     * @var string
     *
     * @ORM\Column(name="afferenza", type="string", length=250, nullable=true)
     */
    private $afferenza;

    /**
     * @var string
     *
     * @ORM\Column(name="facolta", type="string", length=250, nullable=true)
     */
    private $facolta;

    /**
     * @var string
     *
     * @ORM\Column(name="dipartimento", type="string", length=250, nullable=true)
     */
    private $dipartimento;

    /**
     * @var string
     *
     * @ORM\Column(name="sezione", type="string", length=250, nullable=true)
     */
    private $sezione;

    /**
     * @var string
     *
     * @ORM\Column(name="sede", type="string", length=250, nullable=true)
     */
    private $sede;

    /**
     * @var string
     *
     * @ORM\Column(name="sede_citta", type="string", length=250, nullable=true)
     */
    private $sedeCitta;

    /**
     * @var string
     *
     * @ORM\Column(name="gps_lat", type="decimal", precision=10, scale=7, nullable=true)
     */
    private $gpsLat;

    /**
     * @var string
     *
     * @ORM\Column(name="gps_lng", type="decimal", precision=10, scale=7, nullable=true)
     */
    private $gpsLng;

    /**
     * @var string
     *
     * @ORM\Column(name="ubicazione", type="string", length=250, nullable=true)
     */
    private $ubicazione;

    /**
     * @var string
     *
     * @ORM\Column(name="descrizione", type="text", nullable=true)
     */
    private $descrizione;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono", type="string", length=250, nullable=true)
     */
    private $telefono;

    /**
     * @var string
     *
     * @ORM\Column(name="web", type="string", length=250, nullable=true)
     */
    private $web;

    /**
     * @var string
     *
     * @ORM\Column(name="info", type="text", nullable=true)
     */
    private $info;

    /**
     * @var integer
     *
     * @ORM\Column(name="responsabile", type="integer", nullable=true)
     */
    private $responsabile;

    /**
     * @var integer
     *
     * @ORM\Column(name="referente", type="integer", nullable=true)
     */
    private $referente;

    /**
     * @var integer
     *
     * @ORM\Column(name="attivita_esterna", type="integer", nullable=true)
     */
    private $attivitaEsterna;

    /**
     * @var string
     *
     * @ORM\Column(name="attivita_esterna_tipol", type="string", length=250, nullable=true)
     */
    private $attivitaEsternaTipol;

    /**
     * @var integer
     *
     * @ORM\Column(name="regolam_accesso", type="integer", nullable=true)
     */
    private $regolamAccesso;

    /**
     * @var string
     *
     * @ORM\Column(name="regolam_accesso_atti", type="string", length=250, nullable=true)
     */
    private $regolamAccessoAtti;

    /**
     * @var \Innovare\MainBundle\Entity\Afferenza
     *
     * @ORM\ManyToOne(targetEntity="Innovare\MainBundle\Entity\Afferenza")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_afferenza", referencedColumnName="id")
     * })
     */
    private $idAfferenza;

    /**
     * @var \Innovare\MainBundle\Entity\Ente
     *
     * @ORM\ManyToOne(targetEntity="Innovare\MainBundle\Entity\Ente")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_ente", referencedColumnName="id")
     * })
     */
    private $idEnte;



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
     * Set idSettore
     *
     * @param integer $idSettore
     * @return Laboratorio2
     */
    public function setIdSettore($idSettore)
    {
        $this->idSettore = $idSettore;

        return $this;
    }

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
     * Set nome
     *
     * @param string $nome
     * @return Laboratorio2
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
     * Set centro
     *
     * @param string $centro
     * @return Laboratorio2
     */
    public function setCentro($centro)
    {
        $this->centro = $centro;

        return $this;
    }

    /**
     * Get centro
     *
     * @return string 
     */
    public function getCentro()
    {
        return $this->centro;
    }

    /**
     * Set afferenza
     *
     * @param string $afferenza
     * @return Laboratorio2
     */
    public function setAfferenza($afferenza)
    {
        $this->afferenza = $afferenza;

        return $this;
    }

    /**
     * Get afferenza
     *
     * @return string 
     */
    public function getAfferenza()
    {
        return $this->afferenza;
    }

    /**
     * Set facolta
     *
     * @param string $facolta
     * @return Laboratorio2
     */
    public function setFacolta($facolta)
    {
        $this->facolta = $facolta;

        return $this;
    }

    /**
     * Get facolta
     *
     * @return string 
     */
    public function getFacolta()
    {
        return $this->facolta;
    }

    /**
     * Set dipartimento
     *
     * @param string $dipartimento
     * @return Laboratorio2
     */
    public function setDipartimento($dipartimento)
    {
        $this->dipartimento = $dipartimento;

        return $this;
    }

    /**
     * Get dipartimento
     *
     * @return string 
     */
    public function getDipartimento()
    {
        return $this->dipartimento;
    }

    /**
     * Set sezione
     *
     * @param string $sezione
     * @return Laboratorio2
     */
    public function setSezione($sezione)
    {
        $this->sezione = $sezione;

        return $this;
    }

    /**
     * Get sezione
     *
     * @return string 
     */
    public function getSezione()
    {
        return $this->sezione;
    }

    /**
     * Set sede
     *
     * @param string $sede
     * @return Laboratorio2
     */
    public function setSede($sede)
    {
        $this->sede = $sede;

        return $this;
    }

    /**
     * Get sede
     *
     * @return string 
     */
    public function getSede()
    {
        return $this->sede;
    }

    /**
     * Set sedeCitta
     *
     * @param string $sedeCitta
     * @return Laboratorio2
     */
    public function setSedeCitta($sedeCitta)
    {
        $this->sedeCitta = $sedeCitta;

        return $this;
    }

    /**
     * Get sedeCitta
     *
     * @return string 
     */
    public function getSedeCitta()
    {
        return $this->sedeCitta;
    }

    /**
     * Set gpsLat
     *
     * @param string $gpsLat
     * @return Laboratorio2
     */
    public function setGpsLat($gpsLat)
    {
        $this->gpsLat = $gpsLat;

        return $this;
    }

    /**
     * Get gpsLat
     *
     * @return string 
     */
    public function getGpsLat()
    {
        return $this->gpsLat;
    }

    /**
     * Set gpsLng
     *
     * @param string $gpsLng
     * @return Laboratorio2
     */
    public function setGpsLng($gpsLng)
    {
        $this->gpsLng = $gpsLng;

        return $this;
    }

    /**
     * Get gpsLng
     *
     * @return string 
     */
    public function getGpsLng()
    {
        return $this->gpsLng;
    }

    /**
     * Set ubicazione
     *
     * @param string $ubicazione
     * @return Laboratorio2
     */
    public function setUbicazione($ubicazione)
    {
        $this->ubicazione = $ubicazione;

        return $this;
    }

    /**
     * Get ubicazione
     *
     * @return string 
     */
    public function getUbicazione()
    {
        return $this->ubicazione;
    }

    /**
     * Set descrizione
     *
     * @param string $descrizione
     * @return Laboratorio2
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
     * Set telefono
     *
     * @param string $telefono
     * @return Laboratorio2
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Get telefono
     *
     * @return string 
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set web
     *
     * @param string $web
     * @return Laboratorio2
     */
    public function setWeb($web)
    {
        $this->web = $web;

        return $this;
    }

    /**
     * Get web
     *
     * @return string 
     */
    public function getWeb()
    {
        return $this->web;
    }

    /**
     * Set info
     *
     * @param string $info
     * @return Laboratorio2
     */
    public function setInfo($info)
    {
        $this->info = $info;

        return $this;
    }

    /**
     * Get info
     *
     * @return string 
     */
    public function getInfo()
    {
        return $this->info;
    }

    /**
     * Set responsabile
     *
     * @param integer $responsabile
     * @return Laboratorio2
     */
    public function setResponsabile($responsabile)
    {
        $this->responsabile = $responsabile;

        return $this;
    }

    /**
     * Get responsabile
     *
     * @return integer 
     */
    public function getResponsabile()
    {
        return $this->responsabile;
    }

    /**
     * Set referente
     *
     * @param integer $referente
     * @return Laboratorio2
     */
    public function setReferente($referente)
    {
        $this->referente = $referente;

        return $this;
    }

    /**
     * Get referente
     *
     * @return integer 
     */
    public function getReferente()
    {
        return $this->referente;
    }

    /**
     * Set attivitaEsterna
     *
     * @param integer $attivitaEsterna
     * @return Laboratorio2
     */
    public function setAttivitaEsterna($attivitaEsterna)
    {
        $this->attivitaEsterna = $attivitaEsterna;

        return $this;
    }

    /**
     * Get attivitaEsterna
     *
     * @return integer 
     */
    public function getAttivitaEsterna()
    {
        return $this->attivitaEsterna;
    }

    /**
     * Set attivitaEsternaTipol
     *
     * @param string $attivitaEsternaTipol
     * @return Laboratorio2
     */
    public function setAttivitaEsternaTipol($attivitaEsternaTipol)
    {
        $this->attivitaEsternaTipol = $attivitaEsternaTipol;

        return $this;
    }

    /**
     * Get attivitaEsternaTipol
     *
     * @return string 
     */
    public function getAttivitaEsternaTipol()
    {
        return $this->attivitaEsternaTipol;
    }

    /**
     * Set regolamAccesso
     *
     * @param integer $regolamAccesso
     * @return Laboratorio2
     */
    public function setRegolamAccesso($regolamAccesso)
    {
        $this->regolamAccesso = $regolamAccesso;

        return $this;
    }

    /**
     * Get regolamAccesso
     *
     * @return integer 
     */
    public function getRegolamAccesso()
    {
        return $this->regolamAccesso;
    }

    /**
     * Set regolamAccessoAtti
     *
     * @param string $regolamAccessoAtti
     * @return Laboratorio2
     */
    public function setRegolamAccessoAtti($regolamAccessoAtti)
    {
        $this->regolamAccessoAtti = $regolamAccessoAtti;

        return $this;
    }

    /**
     * Get regolamAccessoAtti
     *
     * @return string 
     */
    public function getRegolamAccessoAtti()
    {
        return $this->regolamAccessoAtti;
    }

    /**
     * Set idAfferenza
     *
     * @param \Innovare\MainBundle\Entity\Afferenza $idAfferenza
     * @return Laboratorio2
     */
    public function setIdAfferenza(\Innovare\MainBundle\Entity\Afferenza $idAfferenza = null)
    {
        $this->idAfferenza = $idAfferenza;

        return $this;
    }

    /**
     * Get idAfferenza
     *
     * @return \Innovare\MainBundle\Entity\Afferenza 
     */
    public function getIdAfferenza()
    {
        return $this->idAfferenza;
    }

    /**
     * Set idEnte
     *
     * @param \Innovare\MainBundle\Entity\Ente $idEnte
     * @return Laboratorio2
     */
    public function setIdEnte(\Innovare\MainBundle\Entity\Ente $idEnte = null)
    {
        $this->idEnte = $idEnte;

        return $this;
    }

    /**
     * Get idEnte
     *
     * @return \Innovare\MainBundle\Entity\Ente 
     */
    public function getIdEnte()
    {
        return $this->idEnte;
    }
}
