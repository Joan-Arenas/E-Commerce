<?php

namespace App\Repository;

use App\Entity\AdresseFact;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method AdresseFact|null find($id, $lockMode = null, $lockVersion = null)
 * @method AdresseFact|null findOneBy(array $criteria, array $orderBy = null)
 * @method AdresseFact[]    findAll()
 * @method AdresseFact[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AdresseFactRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, AdresseFact::class);
    }

    // /**
    //  * @return AdresseFact[] Returns an array of AdresseFact objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?AdresseFact
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
