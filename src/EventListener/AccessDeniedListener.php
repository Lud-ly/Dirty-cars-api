<?php

// src/EventListener/AccessDeniedListener.php
namespace App\EventListener;

use Symfony\Component\HttpKernel\Event\ExceptionEvent;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;
use Symfony\Component\HttpFoundation\JsonResponse;

class AccessDeniedListener
{
    public function onKernelException(ExceptionEvent $event): void
    {
        $exception = $event->getThrowable();

        if ($exception instanceof AccessDeniedHttpException) {
            $response = new JsonResponse([
                'status' => '😵 error 😵',
                'message' => 'Accès refusé. Cette ressource est réservée aux membres Premium.',
                'solution' => 'Veuillez souscrire à la formule Premium pour y accéder.',
                'support' => 'Pour toute assistance, contactez le support à contact@devlm.fr'
            ], 403);

            $event->setResponse($response);
        }
    }
}
