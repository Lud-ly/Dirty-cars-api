<?php

namespace App\EventListener;

use Symfony\Component\HttpKernel\Event\ExceptionEvent;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\JsonResponse;

class RouteNotFoundListener
{
    public function onKernelException(ExceptionEvent $event): void
    {
        $exception = $event->getThrowable();

        // Vérifie si l'exception est liée à une route inexistante
        if ($exception instanceof NotFoundHttpException) {
            $response = new JsonResponse([
                'status' => '⛔ error ⛔',
                'message' => 'La route demandée n\'existe pas.',
                'solution' => 'Veuillez vérifier l\'URL ou consulter la documentation de l\'API.'
            ], 404);

            $event->setResponse($response);
        }
    }
}
