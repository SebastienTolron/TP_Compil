TP_Compil
=========



L'objectif du TP est de se familiariser avec les outils JFlex et CUP.


Exercice 1 :
=========

Ecrire un �valuateur d'expressions arithm�tiques sur les nombres entiers. Vous devez �crire l'analyseur lexicale avec JFlex et l'analyseur syntaxique avec CUP.

Exemple de fichier source de l'�valuateur :

12 + 5; 		/* ceci est un commentaire */
10 / 2 - 3;  99; 	/* le point-virgule s�pare les expressions � �valuer */
/* l'�valuation donne toujours un nombre entier */
((30 * 1) + 4) mod 2;	/* cinq op�rateurs binaires */
erreur + 5;		/* il peut avoir des erreurs */
8 / 0 + 6;		/* erreur, on doit pouvoir continuer */
3 + * 5;		/* encore erreur */
3 * -4;			/* notez l'op�rateur unaire */
5 +
4; /* expression sur plus d'une ligne */

A propos l'op�rateur unaire "-", vous trouverez ici un exemple de d�claration de precedence et d'utilisation dans une r�gle de production.

Vous avez tout inter�t automatiser des op�rations r�p�titives (compilation, d�placement de fichiers, ex�cution). Vous pouvez pour cela soit utiliser un plugin, soit utiliser Ant.
Pointeurs sur Ant :

    Voici un exemple de fichier ant ici.
    Vous pouvez aussi consulter un tutoriel, par exemple celui-ci.

Exercice 2 :
=========

Une extension utile � votre �valuateur consiste � accepter des variables pr�cedement d�clar�es, dans les expression. Modifier votre analyseur lexicale et syntaxique pour tenir compte de cette extension.

Exemple de source de l'�valuateur :

let prixHt = 200; /* d�claration et initialisation */
let prixTtc =  prixHt * 119 / 100;
-prixTtc + 100;  /* unaire qui pr�c�de une variable */
14 / x;          /* erreur */
5 # + 2;         /* erreur, il faut le signaler */
10 * 3;          // reste ligne est commentaire
5;
/* fin */

