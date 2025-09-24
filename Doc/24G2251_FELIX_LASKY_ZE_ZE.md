Filière : Informatique
UE INF231 : Structure de Données II
Enseignant : PR Metatagia
NOM:ZE ZE FELIX LASKY 
MATRICULE: 24G2251


Lors de du travail du  TP, l’objectif de ma tâche étais  de mettre en pratique les questions sur 
 1. Vérifier si un tableau est trié.
 2. Déterminer la médiane d’un tableau

J’ai commencé par écrire un programme qui permet à l’utilisateur de saisir les éléments d’un tableau et de les afficher. Cela m’a permis de tester facilement le contenu des données entrées.
Ensuite, j’ai intégré un algorithme de tri par insertion pour organiser le tableau dans l’ordre croissant. Ce tri est indispensable car la recherche de la médiane nécessite un tableau ordonné. J’ai compris que l’algorithme de tri par insertion fonctionne en déplaçant progressivement chaque élément à la bonne position dans le tableau.
Pour la première partie du travail, j’ai mis en place une vérification simple afin de savoir si le tableau était déjà trié. Cette vérification se fait en comparant chaque élément avec le suivant. Si un élément est plus grand que celui qui le suit, alors le tableau n’est pas trié. Dans ce cas, le programme lance automatiquement le tri pour corriger le tableau.

Pour la deuxième partie, j’ai implémenté le calcul de la médiane. J’ai compris que si le tableau a une taille impaire, la médiane est simplement l’élément du milieu. En revanche, si la taille est paire, elle est obtenue en faisant la moyenne des deux valeurs centrales.
Afin de rendre le programme plus interactif, j’ai ajouté un menu qui propose deux choix à l’utilisateur :
 1. Tester si un tableau est trié.
 2. Calculer la médiane.

Enfin, j’ai utilisé l’allocation dynamique de mémoire (malloc) afin que l’utilisateur puisse définir lui-même la taille du tableau sans restriction fixe. La mémoire est libérée à la fin du programme avec free().

Résultats 
 • Le programme permet de saisir un tableau, de vérifier s’il est trié et de le trier si nécessaire.
 • Il calcule correctement la médiane, que la taille du tableau soit paire ou impaire.
 • L’ensemble a été testé avec plusieurs exemples et fonctionne correctement.

Conclusion

 m’a permis de consolider mes connaissances sur la gestion des tableaux en C  J’ai aussi mieux compris l’importance de l’allocation dynamique pour rendre les programmes plus flexibles et interactifs.
