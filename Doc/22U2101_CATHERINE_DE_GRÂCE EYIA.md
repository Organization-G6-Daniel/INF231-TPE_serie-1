
Programme d'Opérations sur les Matrices

Description

Ce programme en C permet d'effectuer des opérations de base sur les matrices : la somme de deux matrices de mêmes dimensions et le produit de deux matrices compatibles.

 Il demande à l'utilisateur les dimensions et les éléments des matrices via des entrées clavier, effectue le calcul et affiche le résultat sous forme de grille.

Ajoutez un menu simple dans main() pour le rendre exécutable.

Fonctionnalités

Somme des matrices (sommeMatrices()) : Additionne deux matrices n x m.

Produit des matrices (produitMatrices()) : Multiplie deux matrices (A : n x m, B : m x p → résultat : n x p).

Utilise des tableaux de taille variable (VLA) pour plus de flexibilité.

Compilation et Utilisation

Compilez avec GCC :RunCopy codegcc -o matrices fichier.cExécutez :RunCopy code./matrices

Suivez les invites pour entrer les dimensions et éléments (ex. : pour une somme 2x2, saisissez lignes/colonnes, puis éléments ligne par ligne).

LimitationsPas de gestion d'erreurs (entrées invalides).

Matrices entières uniquement ; pour plus de robustesse, ajoutez des allocations dynamiques (malloc).
