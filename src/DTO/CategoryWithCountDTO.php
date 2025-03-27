<?php

namespace App\DTO;

 Class CategoryWithCountDTO
{
    public function __construct(
        public readonly int $id,
        public readonly string $name,
        public readonly int $count
    ){    
    }
}