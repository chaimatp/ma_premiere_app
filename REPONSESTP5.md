1 -
Parce que ce sont les mêmes noms que dans les 'attributes' du JSON de l'API Kitsu. Comme ça, on a pu remplacer 'animesTest' par les vraies données sans changer le 'ListTile'.

2-
*Erreur ('hasError') : le texte « Erreur de chargement ».
*Chargement en cours (pas encore de données) : un cercle qui tourne ('CircularProgressIndicator').
*Données reçues : la liste des animés.

3-
-«Connecté» : la clé connecté contient 'True' 
-Après « Déconnexion » : la clé connecté est supprimée . Au lancement, on lit donc false grâce à '?? false' , et l'app ouvre la page de connexion.