<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class BlogController extends AbstractController
{
    /**
     * @Route("/blog/{slug}", requirements={"slug"="[a-z0-9-]*"}, methods={"GET"}, name="blog")
     */
    public function show($slug)
    {

        $slug = str_replace("-", " ", $slug);
        $slug = ucwords($slug);
        if ($slug == "") {
            $slug = "Article Sans Titre";
        }
        //var_dump($slug);
        return $this->render('blog/blog.html.twig', ['slug' => $slug]);
    }
}
