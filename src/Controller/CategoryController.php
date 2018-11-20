<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Category;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use App\Form\CategoryType;
use Symfony\Component\HttpFoundation\Request;


class CategoryController extends AbstractController
{
    /**
     * @Route("/category", name="category")
     */
    public function index(Request $request) : Response
    {

        $category = new Category();
        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);
        //var_dump($category->getName());


        if ($form->isSubmitted()) {
            $data = $form->getData();
            // $data contient les données du $_POST
            // Faire une recherche dans la BDD avec les infos de $data...
            $em = $this->getDoctrine()->getManager();
            $em->persist($data);
            $em->flush();
            //header('Location: allCategories.html.twig');
            return $this->redirectToRoute('categories');
        }

        return $this->render('category/index.html.twig', ['controller_name' => 'CategoryController', 'form' => $form->createView()]);
    }

    /**
     * @Route("/category/{id}", name="category_show")
     */
    public function show(Category $category) :Response
    {
        //var_dump($category);

        return $this->render('category/category.html.twig', ['category'=>$category]);
    }

    /**
     * @Route("/all/categories", name="categories")
     */
    public function showAllCategories()
    {

        $categories = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findAll();
        //var_dump($categories);

        return $this->render('category/allCategories.html.twig', ['categories' => $categories]);

    }


}
