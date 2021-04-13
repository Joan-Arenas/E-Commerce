<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class UserFixtures extends Fixture
{

    public function load(ObjectManager $manager)
    {
        $user = new User();
        $user->setNom('Arenas');
        $user->setPrenom('Joan');
        $user->setEmail('joan@hotmail.com');
        $user->setRoles(['ADMIN']);
        $user->setDateCreate(new \DateTime());
        $user->setDateUpdate(new \DateTime());

        $manager->persist($user);
        $manager->flush();

    }


}
