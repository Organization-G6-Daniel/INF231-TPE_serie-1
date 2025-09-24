# Projet de Bibliothèque d'Opérations Mathématiques et Algorithmiques en C

Une bibliothèque modulaire en C implémentant des opérations fondamentales sur les matrices, vecteurs et tableaux, ainsi que des algorithmes de base.

  Structure des Fichiers


├── 231.h          # En-tête contenant toutes les déclarations de fonctions
├── 231.c          # Implémentation des fonctions de la bibliothèque
├── main.c         # Programme de démonstration et tests
└── README.md      # Ce fichier


  Fonctionnalités Implémentées

 1. Somme de Matrices
Fonction : somme_matrices(int **A, int **B, int lignes, int colonnes)
- Calcule la somme de deux matrices A et B de mêmes dimensions
- Retourne une nouvelle matrice allouée dynamiquement
- Complexité : O(n×m)

 2. Produit de Matrices
Fonction : produit_matrices(int **A, int **B, int lignesA, int colonnesA, int colonnesB)
- Effectue le produit matriciel A × B
- Vérifie la compatibilité des dimensions (colonnesA = lignesB)
- Complexité : O(n×m×p)

 3. Recherche Séquentielle
Fonction : recherche_sequentielle(int *tableau, int taille, int cible)
- Parcourt linéairement le tableau à la recherche de l'élément cible
- Retourne l'indice de l'élément trouvé ou -1 si absent
- Complexité : O(n)

 4. Multiplication par Addition
Fonction : multiplication_par_addition(int a, int b)
- Calcule a × b en utilisant exclusivement l'opérateur +
- Implémentation naïve par additions successives
- Complexité : O(n)

 5. Test de Tri
Fonction : est_trie(int *tableau, int taille)
- Vérifie si un tableau est trié en ordre croissant
- Retourne 1 si trié, 0 sinon
- Complexité : O(n)

 6. Médian d'un Tableau
Fonction : median(int *tableau, int taille)
- Calcule la valeur médiane du tableau
- Gère les cas pairs et impairs
- Note : Modifie l'ordre du tableau (utilisation de qsort)
- Complexité : O(n log n)

 7. Inversion de Tableau
Fonction : inverser_tableau(int *tableau, int taille)
- Inverse l'ordre des éléments du tableau (in-place)
- Complexité : O(n)

 8. Produit Vectoriel
Fonction : produit_vectoriel(int *vecteur1, int *vecteur2)
- Calcule le produit vectoriel de deux vecteurs 3D
- Retourne un nouveau vecteur 3D alloué dynamiquement
- Spécifique aux vecteurs de dimension 3

 9. Produit Vecteur × Matrice
Fonction :  produit_vecteur_matrice(int *vecteur, int **matrice, int lignes, int colonnes)
- Multiplie un vecteur ligne par une matrice
- Retourne un nouveau vecteur alloué dynamiquement
- Précondition :  taille du vecteur = nombre de lignes de la matrice

  Utilisation

 Compilation

gcc main.c 231.c  -o programme


 Exécution

./programme


 Intégration dans votre projet

#include "231.h"

// Utilisation des fonctions
int main() {
    // Exemple d'utilisation
    int taille = 5;
    int *tab = creer_tableau(taille);
    
    if (est_trie(tab, taille)) {
        printf("Le tableau est trié\n");
    }
    
    liberer_tableau(tab);
    return 0;
}


  API Complète

 Fonctions de création/liberation

int* creer_tableau(int taille);
int** creer_matrice(int lignes, int colonnes);
void liberer_tableau(int *tableau);
void liberer_matrice(int **matrice, int lignes);


 Fonctions principales

// Matrices
int** somme_matrices(int **A, int **B, int lignes, int colonnes);
int** produit_matrices(int **A, int **B, int lignesA, int colonnesA, int colonnesB);

// Tableaux
int recherche_sequentielle(int *tableau, int taille, int cible);
int est_trie(int *tableau, int taille);
double median(int *tableau, int taille);
void inverser_tableau(int *tableau, int taille);

// Opérations mathématiques
int multiplication_par_addition(int a, int b);
int* produit_vectoriel(int *vecteur1, int *vecteur2);
int* produit_vecteur_matrice(int *vecteur, int **matrice, int lignes, int colonnes);


  Notes Importantes

1. Gestion de mémoire : Les fonctions retournant des tableaux/matrices allouent dynamiquement la mémoire
2. Responsabilité de l'utilisateur : Libérer la mémoire après utilisation
3. Validation : Certaines fonctions supposent des préconditions (dimensions compatibles, etc.)
4. Performance : Les implémentations sont pédagogiques, optimisables pour des cas d'usage réels

  Tests

Le fichier main.c contient des cas de test pour chaque fonction, permettant de vérifier le bon fonctionnement de la bibliothèque.

  Complexités Algorithmiques

| Opération | Complexité | Notes |
|-----------|------------|-------|
| Somme matrices | O(n×m) | Optimale |
| Produit matrices | O(n×m×p) | Optimale (naïve) |
| Recherche séquentielle | O(n) | Optimale dans le pire cas |
| Multiplication par addition | O(n) | Implémentation naïve |
| Test de tri | O(n) | Optimale |
| Médian | O(n log n) | Due au tri |
| Inversion tableau | O(n) | Optimale |
| Produit vectoriel | O(1) | Dimension fixe (3D) |
| Produit vecteur×matrice | O(n×m) | Optimale |

  Dépendances

- Compilateur C supportant C99
- Bibliothèque standard C (stdlib.h, stdio.h, math.h)

  Auteur

Bibliothèque développée dans un cadre pédagogique pour illustrer les concepts de programmation modulaire en C.
