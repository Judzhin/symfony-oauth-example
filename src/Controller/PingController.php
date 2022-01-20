<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PingController extends AbstractController
{
    #[Route('/ping', name: 'ping')]
    public function index(): Response
    {
        return $this->json('ping/index.html.twig', [
            'controller_name' => 'PingController',
        ]);
    }
}
