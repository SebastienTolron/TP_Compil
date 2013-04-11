TP_Compil
=========



L'objectif du TP est de se familiariser avec les outils JFlex et CUP.


Exercice 1 :
=========

Ecrire un évaluateur d'expressions arithmétiques sur les nombres entiers. Vous devez écrire l'analyseur lexicale avec JFlex et l'analyseur syntaxique avec CUP.

Exemple de fichier source de l'évaluateur :

12 + 5; 		/* ceci est un commentaire */
10 / 2 - 3;  99; 	/* le point-virgule sépare les expressions à évaluer */
/* l'évaluation donne toujours un nombre entier */
((30 * 1) + 4) mod 2;	/* cinq opérateurs binaires */
erreur + 5;		/* il peut avoir des erreurs */
8 / 0 + 6;		/* erreur, on doit pouvoir continuer */
3 + * 5;		/* encore erreur */
3 * -4;			/* notez l'opérateur unaire */
5 +
4; /* expression sur plus d'une ligne */

A propos l'opérateur unaire "-", vous trouverez ici un exemple de déclaration de precedence et d'utilisation dans une règle de production.

Vous avez tout interêt automatiser des opérations répétitives (compilation, déplacement de fichiers, exécution). Vous pouvez pour cela soit utiliser un plugin, soit utiliser Ant.
Pointeurs sur Ant :

    Voici un exemple de fichier ant ici.
    Vous pouvez aussi consulter un tutoriel, par exemple celui-ci.

Exercice 2 :
=========

Une extension utile à votre évaluateur consiste à accepter des variables précedement déclarées, dans les expression. Modifier votre analyseur lexicale et syntaxique pour tenir compte de cette extension.

Exemple de source de l'évaluateur :

let prixHt = 200; /* déclaration et initialisation */
let prixTtc =  prixHt * 119 / 100;
-prixTtc + 100;  /* unaire qui précéde une variable */
14 / x;          /* erreur */
5 # + 2;         /* erreur, il faut le signaler */
10 * 3;          // reste ligne est commentaire
5;
/* fin */

