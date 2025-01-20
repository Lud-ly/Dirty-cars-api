<?php

namespace App\Entity;

use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\Put;
use ApiPlatform\Metadata\Post;
use Doctrine\DBAL\Types\Types;
use ApiPlatform\Metadata\Patch;
use ApiPlatform\Metadata\Delete;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\CarRepository;
use ApiPlatform\Metadata\ApiFilter;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\GetCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\Common\Collections\ArrayCollection;
use ApiPlatform\Doctrine\Orm\Filter\SearchFilter;
use Symfony\Component\Serializer\Annotation\Groups;

#[ORM\Entity(repositoryClass: CarRepository::class)]
#[ApiResource(
    operations: [
        new Get(),
        new Get(
            name: 'premium',
            uriTemplate: '/cars/{id}/premium',
            normalizationContext: ['groups' => ['car:read', 'car:readitem', 'car:premium']],
            security: "is_granted('ROLE_PREMIUM')"
        ),
        new Get(
            name: 'gold',
            uriTemplate: '/cars/{id}/gold',
            normalizationContext: ['groups' => ['car:read', 'car:readitem', 'car:premium', 'car:gold']],
            security: "is_granted('ROLE_GOLD')"
        ),
        new GetCollection(
            normalizationContext: ['groups' => ['car:read']]
        ),
          // Création réservée aux ADMIN
        new Post(
            security: "is_granted('ROLE_ADMIN')",
            securityMessage: "Accès refusé : seuls les administrateurs peuvent créer des ressources."
        ),
        
        // Modification complète réservée aux ADMIN
        new Put(
            security: "is_granted('ROLE_ADMIN')",
            securityMessage: "Accès refusé : seuls les administrateurs peuvent modifier des ressources."
        ),
        
        // Modification partielle réservée aux ADMIN
        new Patch(
            security: "is_granted('ROLE_ADMIN')",
            securityMessage: "Accès refusé : seuls les administrateurs peuvent modifier des ressources."
        ),
        
        // Suppression réservée aux ADMIN
        new Delete(
            security: "is_granted('ROLE_ADMIN')",
            securityMessage: "Accès refusé : seuls les administrateurs peuvent supprimer des ressources."
        )
    ]
)]
#[ApiFilter(SearchFilter::class, properties: ['brand' => 'exact', 'category.name' => 'exact'])]
class Car
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups(['car:read'])]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Groups(['car:read'])]
    private ?string $brand = null;

    #[ORM\Column(length: 255)]
    #[Groups(['car:read'])]
    private ?string $model = null;

    #[ORM\Column(type: Types::TEXT)]
    #[Groups(['car:readitem'])]
    private ?string $description = null;

    #[ORM\Column]
    #[Groups(['car:readitem'])]
    private ?int $year = null;

    #[ORM\Column]
    #[Groups(['car:readitem'])]
    private ?float $price = null;

    #[ORM\Column(length: 255)]
    #[Groups(['car:readitem'])]
    private ?string $engineType = null;  // Type Moteur

    #[ORM\Column]
    #[Groups(['car:readitem'])]
    private ?int $horsepower = null;  // Puissance

    #[ORM\Column]
    #[Groups(['car:readitem'])]
    private ?int $torque = null;  // Couple moteur

    #[ORM\Column]
    #[Groups(['car:readitem'])]
    private ?float $topSpeed = null;  // Vitesse max

    #[ORM\Column]
    #[Groups(['car:premium'])]
    private ?float $acceleration = null;  // 0-100 km/h

    #[ORM\Column(length: 50)]
    #[Groups(['car:premium'])]
    private ?string $fuelType = null;  // Essence, Hybride

    #[ORM\Column(length: 50)]
    #[Groups(['car:premium'])]
    private ?string $transmission = null;  // Manuelle, Auto

    #[ORM\Column(length: 50)]
    #[Groups(['car:premium'])]
    private ?string $drivetrain = null;  // Propulsion, AWD

    #[ORM\Column]
    #[Groups(['car:premium'])]
    private ?int $weight = null; 


    /**
     * @var Collection<int, Review>
     */
    #[ORM\OneToMany(targetEntity: Review::class, mappedBy: 'car')]
    #[Groups(['car:premium'])]
    private Collection $reviews;

    #[ORM\Column(length: 255, nullable: true)]
    #[Groups(['car:read'])]
    private ?string $img_path = null;

    #[ORM\ManyToOne(targetEntity: Category::class, inversedBy: 'cars')]
    #[Groups(['car:readitem', 'category:read'])]
    private ?Category $category = null;

    #[ORM\OneToMany(mappedBy: 'car', targetEntity: CarImage::class, cascade: ['persist', 'remove'])]
    #[Groups(['car:gold'])]
    private Collection $images;

    public function __construct()
    {
        $this->reviews = new ArrayCollection();
        $this->images = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBrand(): ?string
    {
        return $this->brand;
    }

    public function setBrand(string $brand): static
    {
        $this->brand = $brand;

        return $this;
    }

    public function getModel(): ?string
    {
        return $this->model;
    }

    public function setModel(string $model): static
    {
        $this->model = $model;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getYear(): ?int
    {
        return $this->year;
    }

    public function setYear(int $year): static
    {
        $this->year = $year;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getEngineType(): ?string
    {
        return $this->engineType;
    }

    public function setEngineType(string $engineType): static
    {
        $this->engineType = $engineType;
        return $this;
    }

    public function getHorsepower(): ?int
    {
        return $this->horsepower;
    }

    public function setHorsepower(int $horsepower): static
    {
        $this->horsepower = $horsepower;
        return $this;
    }

    public function getTorque(): ?int
    {
        return $this->torque;
    }

    public function setTorque(int $torque): static
    {
        $this->torque = $torque;
        return $this;
    }

    public function getTopSpeed(): ?float
    {
        return $this->topSpeed;
    }

    public function setTopSpeed(float $topSpeed): static
    {
        $this->topSpeed = $topSpeed;
        return $this;
    }

    public function getAcceleration(): ?float
    {
        return $this->acceleration;
    }

    public function setAcceleration(float $acceleration): static
    {
        $this->acceleration = $acceleration;
        return $this;
    }

    public function getFuelType(): ?string
    {
        return $this->fuelType;
    }

    public function setFuelType(string $fuelType): static
    {
        $this->fuelType = $fuelType;
        return $this;
    }

    public function getTransmission(): ?string
    {
        return $this->transmission;
    }

    public function setTransmission(string $transmission): static
    {
        $this->transmission = $transmission;
        return $this;
    }

    public function getDrivetrain(): ?string
    {
        return $this->drivetrain;
    }

    public function setDrivetrain(string $drivetrain): static
    {
        $this->drivetrain = $drivetrain;
        return $this;
    }

    public function getWeight(): ?int
    {
        return $this->weight;
    }

    public function setWeight(int $weight): static
    {
        $this->weight = $weight;
        return $this;
    }


    /**
     * @return Collection<int, Review>
     */
    public function getReviews(): Collection
    {
        return $this->reviews;
    }

    public function addReview(Review $review): static
    {
        if (!$this->reviews->contains($review)) {
            $this->reviews->add($review);
            $review->setCar($this);
        }

        return $this;
    }

    public function removeReview(Review $review): static
    {
        if ($this->reviews->removeElement($review)) {
            // set the owning side to null (unless already changed)
            if ($review->getCar() === $this) {
                $review->setCar(null);
            }
        }

        return $this;
    }

    public function getImgPath(): ?string
    {
        return $this->img_path;
    }

    public function setImgPath(?string $img_path): static
    {
        $this->img_path = $img_path;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): static
    {
        $this->category = $category;

        return $this;
    }

     /**
     * @return Collection<int, CarImage>
     */
    public function getImages(): Collection
    {
        return $this->images;
    }

    public function addImage(CarImage $image): static
    {
        if (!$this->images->contains($image)) {
            $this->images->add($image);
            $image->setCar($this);
        }

        return $this;
    }

    public function removeImage(CarImage $image): static
    {
        if ($this->images->removeElement($image)) {
            if ($image->getCar() === $this) {
                $image->setCar(null);
            }
        }

        return $this;
    }
}
