<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Category;
use App\Entity\Tag;
use App\Form\ArticleType;
use App\Service\Slugify;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
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
        //var_dump($articles);

        return $this->render('article/all.html.twig', ['articles' => $articles]);

    }

    /**
     * @Route("/article/form", name="article_form")
     * @param Request $request
     * @param Slugify $slugify
     * @return \Symfony\Component\HttpFoundation\RedirectResponse|Response
     */
    public function addArticle(Request $request, Slugify $slugify)
    {
        $article = new Article();
        $form = $this->createForm(ArticleType::class, $article);
        //var_dump($form);
        $form->handleRequest($request);
        $slug = $slugify->generate($article->getTitle());
        $article->setSlug($slug);

        if ($form->isSubmitted()) {
            $data = $form->getData();
            // $data contient les données du $_POST
            // Faire une recherche dans la BDD avec les infos de $data...
            $em = $this->getDoctrine()->getManager();
            $em->persist($data);
            $em->flush();
            return $this->redirectToRoute('blog_index');
        }


        return $this->render('article/new.html.twig', ['form'=> $form->createView()]);

    }

    /**
     * @Route("/tagName/{name}", name="tag_name")
     */

    public function allArticlesFromOneTag($name)
    {
        $tag = $this->getDoctrine()
            ->getRepository(Tag::class)
            ->findOneBy(['name' => $name]);
        //var_dump($tag);

        return $this->render('article/oneTag.html.twig', ['tag' => $tag]);
    }

    /**
     * @Route("/article/{id<^[0-9]+$>}", name="articleById")
     */
    public function oneArticleById($id)
    {

        $article = $this->getDoctrine()
            ->getRepository(Article::class)
            ->findOneBy(['id' => $id]);
        //var_dump($article);

        return $this->render('article/oneArticleById.html.twig', ['article' => $article]);

    }


}
