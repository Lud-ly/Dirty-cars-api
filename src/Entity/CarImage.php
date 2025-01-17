<?php

// src/Entity/CarImage.php

namespace App\Entity;

use ApiPlatform\Metadata\Post;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\ImageRepository;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\GetCollection;
use Symfony\Component\Serializer\Annotation\Groups;

#[ORM\Entity(repositoryClass: ImageRepository::class)]
#[ApiResource(
    operations: [
        new Post(
            name: 'image_premium',
            uriTemplate: '/car_images/premium',
            normalizationContext: ['groups' => ['car:read', 'car:readitem', 'car:premium']],
            security: "is_granted('ROLE_PREMIUM')",
            securityMessage: "Accès refusé : cette action est réservée aux membres Premium. Veuillez souscrire à la formule Premium ou contacter le support."
        ),
        new GetCollection(
            normalizationContext: ['groups' => ['image:read']]
        )
    ]
)]
class CarImage
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups(['image:read', 'car:read'])]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Groups(['image:read', 'car:read', 'image:write'])]
    private ?string $url = null;

    #[ORM\ManyToOne(targetEntity: Car::class, inversedBy: 'images')]
    #[Groups(['image:read', 'image:write'])]
    private ?Car $car = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(string $url): static
    {
        $this->url = $url;
        return $this;
    }

    public function getCar(): ?Car
    {
        return $this->car;
    }

    public function setCar(?Car $car): static
    {
        $this->car = $car;
        return $this;
    }
}
