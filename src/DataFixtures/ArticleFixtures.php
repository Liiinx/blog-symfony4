<?php

namespace App\DataFixtures;

use App\Entity\Article;
use App\Service\Slugify;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Faker;


class ArticleFixtures extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $faker = Faker\Factory::create('fr_FR');
        // $product = new Product();
        // $manager->persist($product);
        for ($i = 0; $i < 50; $i ++)
        {
            $article = new Article();
            $article->setTitle(mb_strtolower($faker->sentence()));
            $article->setContent(mb_strtolower($faker->text()));
            $article->setCategory($this->getReference('categorie_' . rand(0, 5)));

            $slugify = new Slugify();
            $slug = $slugify->generate($article->getTitle());
            $article->setSlug($slug);

            $manager->persist($article);
        }
        $manager->flush();
    }

    public function getDependencies()
    {
        return [CategoryFixtures::class];
    }
}
