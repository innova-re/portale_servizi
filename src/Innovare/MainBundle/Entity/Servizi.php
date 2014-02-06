<?php

namespace Innovare\MainBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Servizi
 *
 * @ORM\Table(name="servizi")
 * @ORM\Entity
 */
class Servizi
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
     * @ORM\Column(name="descrizione", type="string", length=250, nullable=false)
     */
    private $descrizione;



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
     * Set descrizione
     *
     * @param string $descrizione
     * @return Servizi
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
}
