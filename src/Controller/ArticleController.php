<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Category;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class ArticleController extends AbstractController
{
    /**
     * @Route("/article", name="article")
     */
    public function index()
    {
        return $this->render('article/index.html.twig', [
            'controller_name' => 'ArticleController',
        ]);
    }

    /**
     * @Route("/categories", name="categories")
     */
    public function showCategories()
    {

        $articles = $this->getDoctrine()
            ->getRepository(Article::class)
            ->findAll();
        //var_dump($articles);

        return $this->render('article/all.html.twig', ['articles' => $articles]);

    }

}
