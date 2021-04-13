<?php

namespace App\Entity;

use App\Repository\AdresseFactRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=AdresseFactRepository::class)
 */
class AdresseFact
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $numeroFact;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $voieFact;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $cpFact;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $villeFact;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $paysFact;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNumeroFact(): ?string
    {
        return $this->numeroFact;
    }

    public function setNumeroFact(string $numeroFact): self
    {
        $this->numeroFact = $numeroFact;

        return $this;
    }

    public function getVoieFact(): ?string
    {
        return $this->voieFact;
    }

    public function setVoieFact(string $voieFact): self
    {
        $this->voieFact = $voieFact;

        return $this;
    }

    public function getCpFact(): ?string
    {
        return $this->cpFact;
    }

    public function setCpFact(string $cpFact): self
    {
        $this->cpFact = $cpFact;

        return $this;
    }

    public function getVilleFact(): ?string
    {
        return $this->villeFact;
    }

    public function setVilleFact(string $villeFact): self
    {
        $this->villeFact = $villeFact;

        return $this;
    }

    public function getPaysFact(): ?string
    {
        return $this->paysFact;
    }

    public function setPaysFact(string $paysFact): self
    {
        $this->paysFact = $paysFact;

        return $this;
    }
}
