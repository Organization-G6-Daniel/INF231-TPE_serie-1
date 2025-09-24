 Cahier de Suivi de Projet Individuel

Projet : Produit d'un vecteur par une matrice (TP INF 231)
Nom : DONGMO NGUEMO GÉRÔME 
Groupe : TP1-INF-231

 Séance n°1 : 24/092025

I. Objectifs de la séance :
*   Finaliser la mise en place de l'infrastructure collaborative sur GitHub.
*   Implémenter la version de base du programme en C effectuant le produit vecteur-matrice.
*   Anticiper d'éventuels problèmes de développement au sein du groupe en créant une version modulaire de secours.

II. Travail effectué durant la séance :
1.  Gestion de projet et collaboration (GitHub) :
    *   Création et configuration de l'organisation GitHub dédiée au projet.
    *   Structuration du dépôt : création des dossiers (/src, /docs, /tests) et disposition des documents de spécification et de planning.
    *   Rédaction du fichier README.md principal avec les consignes de compilation et d'exécution.

2.  Développement principal (Programme en C) :
    *   Implémentation d'un programme en C (main.c) qui :
        *   Lit les dimensions d'une matrice et d'un vecteur.
        *   Saisit ou génère les éléments de la matrice et du vecteur.
        *   Calcule le produit de la matrice par le vecteur.
        *   Affiche le vecteur résultat.

3.  Stratégie de secours (Programme modulaire) :
    *   Conception et développement parallèle d'un programme modulaire (version_modulaire.c).
    *   Découpage des fonctionnalités en modules distincts (ex: saisie.c, calcul.c, affichage.c) avec des en-têtes (*.h).
    *   Objectif : Ce programme autonome et structuré sert de solution de repli en cas de défaillance des autres membres du groupe sur la version principale.

III. Résultats obtenus :
*   L'organisation GitHub est opérationnelle et contient l'ensemble de la documentation de base.
*   Le programme principal (main.c) est fonctionnel : il compile sans erreur et exécute correctement le calcul du produit vecteur-matrice pour des entrées standard.
*   Le programme modulaire de secours est bien avancé, avec l'architecture des fichiers définie et les fonctions de calcul déjà implémentées et testées.

IV. Difficultés rencontrées / Remarques :
*   Aucune difficulté technique majeure rencontrée lors de l'implémentation de l'algorithme de calcul.
*   La stratégie du programme modulaire a été adoptée par anticipation pour garantir la livraison d'un code de qualité, indépendamment des contributions des autres membres. Elle représente un investissement initial supplémentaire pour une sécurité accrue.

V. Travail à faire pour la prochaine séance :
*   Partager et expliquer la structure GitHub aux autres membres du groupe.
*   Attribuer des modules spécifiques du programme modulaire aux membres du groupe pour une intégration collaborative.
*   Commencer la rédaction des tests unitaires pour valider chaque fonction du programme modulaire.

 Fichier : fonction.h

/**
 * @file fonction.h
 * @brief Déclaration des fonctions de calcul matriciel et vectoriel
 * @author DONGMO NGUEMO GÉRÔME 23V2130
 * @date 2024
 * @version 1.0
 */

#ifndef FONCTION_H
#define FONCTION_H

#include <stdio.h>
#include <stdlib.h>

// ============================================================================
// PROTOTYPES DES FONCTIONS
// ============================================================================

/**
 * @brief Calcule la somme de deux matrices de mêmes dimensions
 * @param n Nombre de lignes des matrices
 * @param m Nombre de colonnes des matrices
 * @param A Première matrice (n x m)
 * @param B Deuxième matrice (n x m)
 * @param C Matrice résultat qui contiendra A + B (n x m)
 * @pre Les matrices A et B doivent avoir les mêmes dimensions
 * @post C[i][j] = A[i][j] + B[i][j] pour tout i,j
 */
void sommeMatrices(int n, int m, int A[n][m], int B[n][m], int C[n][m]);

/**
 * @brief Calcule le produit de deux matrices compatibles
 * @param n Nombre de lignes de la matrice A
 * @param m Nombre de colonnes de A et nombre de lignes de B
 * @param p Nombre de colonnes de la matrice B
 * @param A Première matrice (n x m)
 * @param B Deuxième matrice (m x p)
 * @param C Matrice résultat qui contiendra A × B (n x p)
 * @pre Le nombre de colonnes de A doit égaler le nombre de lignes de B
 * @post C[i][j] = Σ(k=0 à m-1) A[i][k] × B[k][j] pour tout i,j
 */
void produitMatrices(int n, int m, int p, int A[n][m], int B[m][p], int C[n][p]);

/**
 * @brief Recherche séquentielle d'une valeur dans un tableau
 * @param tab Tableau d'entiers où effectuer la recherche
 * @param taille Nombre d'éléments dans le tableau
 * @param val Valeur à rechercher
 * @return Index de la première occurrence de val, ou -1 si non trouvé
 * @pre tab ne doit pas être NULL et taille > 0
 * @post Retourne la position (0-indexée) ou -1
 */
int rechercheSequentielle(int tab[], int taille, int val);

/**
 * @brief Calcule le produit de deux entiers par additions successives
 * @param a Premier entier (multiplicande)
 * @param b Deuxième entier (multiplicateur)
 * @return Produit a × b
 * @pre a et b doivent être des entiers positifs ou nuls
 * @post Retourne la somme de a répétée b fois
 */
int produitAdditions(int a, int b);

/**
 * @brief Vérifie si un tableau est trié en ordre croissant
 * @param tab Tableau à vérifier
 * @param taille Nombre d'éléments dans le tableau
 * @return 1 si le tableau est trié, 0 sinon
 * @pre tab ne doit pas être NULL et taille > 0
 * @post Retourne 1 si pour tout i, tab[i] ≤ tab[i+1], 0 sinon
 */
int estTrie(int tab[], int taille);

/**
 * @brief Calcule la médiane d'un tableau d'entiers
 * @param tab Tableau d'entiers
 * @param taille Nombre d'éléments dans le tableau
 * @return Valeur médiane du tableau (double pour précision)
 * @pre tab ne doit pas être NULL et taille > 0
 * @note Modifie l'ordre des éléments (tri en place)
 * @post Si taille impaire: médiane = élément central
 *       Si taille paire: médiane = moyenne des deux éléments centraux
 */
double mediane(int tab[], int taille);

/**
 * @brief Inverse l'ordre des éléments d'un tableau
 * @param tab Tableau à inverser
 * @param taille Nombre d'éléments dans le tableau
 * @pre tab ne doit pas être NULL et taille > 0
 * @post tab[i] et tab[taille-1-i] sont échangés pour i < taille/2
 */
void inverserTableau(int tab[], int taille);

/**
 * @brief Calcule le produit vectoriel de deux vecteurs 3D
 * @param u Premier vecteur 3D
 * @param v Deuxième vecteur 3D
 * @param resultat Vecteur résultat qui contiendra u × v
 * @pre u et v doivent être des vecteurs de dimension 3
 * @post resultat = (u[1]*v[2]-u[2]*v[1], u[2]*v[0]-u[0]*v[2], u[0]*v[1]-u[1]*v[0])
 */
void produitVectoriel(int u[3], int v[3], int resultat[3]);

/**
 * @brief Calcule le produit d'un vecteur par une matrice
 * @param n Dimension du vecteur et nombre de lignes de la matrice
 * @param m Nombre de colonnes de la matrice
 * @param vecteur Vecteur de dimension n
 * @param matrice Matrice de dimensions n x m
 * @param resultat Vecteur résultat de dimension m
 * @pre vecteur et matrice doivent avoir des dimensions compatibles
 * @post resultat[j] = Σ(i=0 à n-1) vecteur[i] × matrice[i][j] pour tout j
 */
void produitVecteurMatrice(int n, int m, int vecteur[n], int matrice[n][m], int resultat[m]);

#endif

 Fichier : main.c

/**
 * @file main.c
 * @brief Programme principal avec menu interactif pour les opérations matricielles
 * @author [Votre nom]
 * @date 2024
 * @version 1.0
 */

#include "fonction.h"

/**
 * @brief Fonction principale du programme
 * @return 0 si exécution réussie
 * 
 * @details Programme interactif présentant un menu permettant de tester
 * toutes les fonctions mathématiques implémentées dans le module fonction.h
 * 
 * @note Utilise des tableaux à taille variable (VLA) pour la flexibilité
 * @warning La taille des matrices est limitée par la pile d'exécution
 */
int main() {
    int choix; /**< Variable stockant le choix de l'utilisateur */
    
    // Affichage de la bannière de bienvenue
    printf("\n====================================\n");
    printf("      BIENVENUE DANS NOTRE PROGRAMME\n");
    printf("====================================\n");

    // Boucle principale du menu
    do {
        // Affichage du menu
        printf("\n------ MENU ------\n");
        printf("1. Somme de matrices\n");
        printf("2. Produit de matrices\n");
        printf("3. Recherche séquentielle\n");
        printf("4. Produit a × b avec +1\n");
        printf("5. Tester si un tableau est trié\n");
        printf("6. Médiane d'un tableau\n");
        printf("7. Inverser un tableau\n");
        printf("8. Produit vectoriel (3D)\n");
        printf("9. Produit vecteur × matrice\n");
        printf("0. Quitter\n");
        printf("Votre choix : ");
        scanf("%d", &choix);

        // Traitement du choix utilisateur
        switch (choix) {
            case 1: { // Somme de matrices
                int n, m; /**< Dimensions des matrices */
                printf("Entrer dimensions (n m) : ");
                scanf("%d %d", &n, &m);
                
                // Déclaration des matrices à taille variable
                int A[n][m], B[n][m], C[n][m];
                
                // Saisie de la matrice A
                printf("Saisir la matrice A :\n");
                for(int i = 0; i < n; i++) {
                    for(int j = 0; j < m; j++) {
                        printf("A[%d][%d] = ", i+1, j+1);
                        scanf("%d", &A[i][j]);
                    }
                }
                
                // Saisie de la matrice B
                printf("Saisir la matrice B :\n");
                for(int i = 0; i < n; i++) {
                    for(int j = 0; j < m; j++) {
                        printf("B[%d][%d] = ", i+1, j+1);
                        scanf("%d", &B[i][j]);
                    }
                }
                
                // Calcul et affichage du résultat
                sommeMatrices(n, m, A, B, C);
                printf("Résultat somme :\n");
                for(int i = 0; i < n; i++) {
                    for(int j = 0; j < m; j++) 
                        printf("%d ", C[i][j]);
                    printf("\n");
                }
                break;
            }
            
            case 2: { // Produit de matrices
                int n, m, p; /**< Dimensions: A(n×m) et B(m×p) */
                printf("Entrer dimensions de A (n m) puis de B (m p): ");
                scanf("%d %d %d", &n, &m, &p);
                
                int A[n][m], B[m][p], C[n][p];
                
                // Saisie de la matrice A
                printf("Saisir la matrice A :\n");
                for(int i = 0; i < n; i++) {
                    for(int j = 0; j < m; j++) {
                        printf("A[%d][%d] = ", i+1, j+1);
                        scanf("%d", &A[i][j]);
                    }
                }
                
                // Saisie de la matrice B
                printf("Saisir la matrice B :\n");
                for(int i = 0; i < m; i++) {
                    for(int j = 0; j < p; j++) {
                        printf("B[%d][%d] = ", i+1, j+1);
                        scanf("%d", &B[i][j]);
                    }
                }
                
                // Calcul et affichage du résultat
                produitMatrices(n, m, p, A, B, C);
                printf("Résultat produit :\n");
                for(int i = 0; i < n; i++) {
                    for(int j = 0; j < p; j++) 
                        printf("%d ", C[i][j]);
                    printf("\n");
                }
                break;
            }
            
            case 3: { // Recherche séquentielle
                int taille, val; /**< Taille du tableau et valeur recherchée */
                printf("Taille du tableau : ");
                scanf("%d", &taille);
                
                int tab[taille]; /**< Tableau à taille variable */
                
                // Saisie du tableau
                for(int i = 0; i < taille; i++) {
                    printf("tab[%d] = ", i+1);
                    scanf("%d", &tab[i]);
                }
                
                printf("Valeur à rechercher : ");
                scanf("%d", &val);
                
                // Recherche et affichage du résultat
                int pos = rechercheSequentielle(tab, taille, val);
                if(pos != -1) 
                    printf("Trouvé à la position %d\n", pos+1);
                else 
                    printf("Non trouvé\n");
                break;
            }
            
            case 4: { // Produit par additions
                int a, b; /**< Nombres à multiplier */
                printf("Entrer a et b : ");
                scanf("%d %d", &a, &b);
                printf("%d x %d = %d\n", a, b, produitAdditions(a, b));
                break;
            }
            
            case 5: { // Test de tri
                int taille;
                printf("Taille du tableau : ");
                scanf("%d", &taille);
                
                int tab[taille];
                
                // Saisie du tableau
                for(int i = 0; i < taille; i++) {
                    printf("tab[%d] = ", i+1);
                    scanf("%d", &tab[i]);
                }
                
                // Test et affichage du résultat
                if(estTrie(tab, taille)) 
                    printf("Le tableau est trié\n");
                else 
                    printf("Le tableau n'est pas trié\n");
                break;
            }
            
            case 6: { // Médiane
                int taille;
                printf("Taille du tableau : ");
                scanf("%d", &taille);
                
                int tab[taille];
                
                // Saisie du tableau
                for(int i = 0; i < taille; i++) {
                    printf("tab[%d] = ", i+1);
                    scanf("%d", &tab[i]);
                }
                
                printf("Médiane = %.2f\n", mediane(tab, taille));
                break;
            }
            
            case 7: { // Inversion de tableau
                int taille;
                printf("Taille du tableau : ");
                scanf("%d", &taille);
                
                int tab[taille];
                
                // Saisie du tableau
                for(int i = 0; i < taille; i++) {
                    printf("tab[%d] = ", i+1);
                    scanf("%d", &tab[i]);
                }
                
                // Inversion et affichage
                inverserTableau(tab, taille);
                printf("Tableau inversé : ");
                for(int i = 0; i < taille; i++) 
                    printf("%d ", tab[i]);
                printf("\n");
                break;
            }
            
            case 8: { // Produit vectoriel 3D
                int u[3], v[3], r[3]; /**< Vecteurs 3D */
                
                // Saisie du vecteur u
                for(int i = 0; i < 3; i++) {
                    printf("u[%d] = ", i+1);
                    scanf("%d", &u[i]);
                }
                
                // Saisie du vecteur v
                for(int i = 0; i < 3; i++) {
                    printf("v[%d] = ", i+1);
                    scanf("%d", &v[i]);
                }
                
                // Calcul et affichage du résultat
                produitVectoriel(u, v, r);
                printf("Produit vectoriel = (%d,%d,%d)\n", r[0], r[1], r[2]);
                break;
            }
            
            case 9: { // Produit vecteur × matrice
                int n, m; /**< Dimensions: vecteur(n) et matrice(n×m) */
                printf("Dimensions vecteur (n) et matrice (n m) : ");
                scanf("%d %d", &n, &m);
                
                int vecteur[n], matrice[n][m], resultat[m];
                
                // Saisie du vecteur
                for(int i = 0; i < n; i++) {
                    printf("vecteur[%d] = ", i+1);
                    scanf("%d", &vecteur[i]);
                }
                
                // Saisie de la matrice
                printf("Saisir la matrice :\n");
                for(int i = 0; i < n; i++) {
                    for(int j = 0; j < m; j++) {
                        printf("M[%d][%d] = ", i+1, j+1);
                        scanf("%d", &matrice[i][j]);
                    }
                }
                
                // Calcul et affichage du résultat
                produitVecteurMatrice(n, m, vecteur, matrice, resultat);
                printf("Résultat : ");
                for(int j = 0; j < m; j++) 
                    printf("%d ", resultat[j]);
                printf("\n");
                break;
            }
            
            case 0: 
                printf("Au revoir !\n"); 
                break;
                
            default: 
                printf("Choix invalide.\n");
        }
    } while(choix != 0);

    return 0;
}


 Fichier : fonction.c


/**
 * @file fonction.c
 * @brief Implémentation des fonctions de calcul matriciel et vectoriel
 * @author [Votre nom]
 * @date 2024
 * @version 1.0
 */

#include "fonction.h"

// ============================================================================
// IMPLÉMENTATIONS DES FONCTIONS
// ============================================================================

/**
 * @brief Implémentation de la somme de matrices
 */
void sommeMatrices(int n, int m, int A[n][m], int B[n][m], int C[n][m]) {
    // Parcours de toutes les lignes
    for (int i = 0; i < n; i++) {
        // Parcours de toutes les colonnes
        for (int j = 0; j < m; j++) {
            // Somme élément par élément
            C[i][j] = A[i][j] + B[i][j];
        }
    }
}

/**
 * @brief Implémentation du produit de matrices
 */
void produitMatrices(int n, int m, int p, int A[n][m], int B[m][p], int C[n][p]) {
    // Parcours des lignes de la matrice résultat
    for (int i = 0; i < n; i++) {
        // Parcours des colonnes de la matrice résultat
        for (int j = 0; j < p; j++) {
            // Initialisation de l'élément résultat
            C[i][j] = 0;
            
            // Calcul du produit scalaire de la ligne i de A et colonne j de B
            for (int k = 0; k < m; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

/**
 * @brief Implémentation de la recherche séquentielle
 */
int rechercheSequentielle(int tab[], int taille, int val) {
    // Parcours séquentiel du tableau
    for (int i = 0; i < taille; i++) {
        // Comparaison avec la valeur recherchée
        if (tab[i] == val) 
            return i; // Retourne la position si trouvé
    }
    return -1; // Retourne -1 si non trouvé
}

/**
 * @brief Implémentation du produit par additions successives
 */
int produitAdditions(int a, int b) {
    int produit = 0; /**< Accumulateur pour le produit */
    
    // Addition de a répétée b fois
    for (int i = 0; i < b; i++) {
        produit += a;
    }
    return produit;
}

/**
 * @brief Implémentation du test de tri
 */
int estTrie(int tab[], int taille) {
    // Vérification que chaque élément est <= au suivant
    for (int i = 0; i < taille - 1; i++) {
        // Si un élément est > au suivant, le tableau n'est pas trié
        if (tab[i] > tab[i + 1]) 
            return 0;
    }
    return 1; // Tableau trié si on arrive jusqu'ici
}

/**
 * @brief Implémentation du calcul de médiane
 */
double mediane(int tab[], int taille) {
    // Tri du tableau par sélection (en place)
    for (int i = 0; i < taille - 1; i++) {
        // Recherche du minimum dans la partie non triée
        for (int j = i + 1; j < taille; j++) {
            // Échange si nécessaire
            if (tab[i] > tab[j]) {
                int temp = tab[i];
                tab[i] = tab[j];
                tab[j] = temp;
            }
        }
    }
    
    // Calcul de la médiane selon la parité de la taille
    if (taille % 2 == 1) {
        // Taille impaire: élément central
        return tab[taille / 2];
    } else {
        // Taille paire: moyenne des deux éléments centraux
        return (tab[taille / 2 - 1] + tab[taille / 2]) / 2.0;
    }
}

/**
 * @brief Implémentation de l'inversion de tableau
 */
void inverserTableau(int tab[], int taille) {
    // Échange symétrique des éléments par rapport au centre
    for (int i = 0; i < taille / 2; i++) {
        // Échange entre tab[i] et tab[taille-1-i]
        int temp = tab[i];
        tab[i] = tab[taille - 1 - i];
        tab[taille - 1 - i] = temp;
    }
}

/**
 * @brief Implémentation du produit vectoriel 3D
 */
void produitVectoriel(int u[3], int v[3], int resultat[3]) {
    // Calcul selon la formule du produit vectoriel en 3D
    resultat[0] = u[1] * v[2] - u[2] * v[1]; // Composante x
    resultat[1] = u[2] * v[0] - u[0] * v[2]; // Composante y
    resultat[2] = u[0] * v[1] - u[1] * v[0]; // Composante z
}

/**
 * @brief Implémentation du produit vecteur × matrice
 */
void produitVecteurMatrice(int n, int m, int vecteur[n], int matrice[n][m], int resultat[m]) {
    // Parcours des colonnes de la matrice résultat
    for (int j = 0; j < m; j++) {
        // Initialisation de l'élément résultat
        resultat[j] = 0;
        
        // Calcul du produit scalaire vecteur × colonne j de la matrice
        for (int i = 0; i < n; i++) {
            resultat[j] += vecteur[i] * matrice[i][j];
        }
    }
}


 Fichier : exercice7.c (version documentée)


/**
 * @file exercice7.c
 * @brief Programme spécifique pour le produit vecteur × matrice (version alternative)
 * @author [Votre nom]
 * @date 2024
 * @version 1.0
 * 
 * @note Version utilisant l'allocation dynamique et les doubles
 * @différence Par rapport à la version principale: utilisation de doubles et allocation dynamique
 */

#include <stdio.h>
#include <stdlib.h>

/**
 * @brief Fonction principale pour l'exercice 7
 * @return 0 si exécution réussie
 */
int main() {
    int n, p; /**< Dimensions: matrice n×p */
    
    printf("BIENVENUE DANS CE PROGRAMME QUI EFFECTUE LE PRODUIT D'UN VECTEUR PAR UNE MATRICE\n");
    printf("\n");
    
    // Saisie des dimensions
    printf("Nombre de lignes de la matrice: ");
    scanf("%d", &n);
    printf("Nombre de colonnes de la matrice: ");
    scanf("%d", &p);
    
    // Allocation mémoire dynamique
    double *v = (double*)malloc(p * sizeof(double));        /**< Vecteur de dimension p */
    double *m = (double*)malloc(n * p * sizeof(double));    /**< Matrice stockée ligne par ligne */
    double *r = (double*)malloc(n * sizeof(double));        /**< Vecteur résultat de dimension 

C'était le récapitulatif de votre humble serviteur DONGMO NGUEMO GÉRÔME 23V2130
