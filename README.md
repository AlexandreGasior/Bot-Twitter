

## BOT TWITTER
Bienvenue à toi sur ce repository. Tu peux y récupérer mon bot Twitter (façon MVC) doté de quelques fonctions basiques.

## FONCTIONNALITES
1. Envoyer un tweet
2. Envoyer un tweet à tous les amis (référes-toi au dernier point des prérequis pour configurer cette option)
3. Ajouter aux favoris les "x" derniers tweets contenant "y"
4. Follow les personnes ayant postés les "x" derniers tweets contenant "y"
5. Mode stream (voir et auto-like des tweets traitant d'un ou plusieurs sujet(s))
6. Quitter le programme

## PREREQUIS
> "It's just basic chemistry, yo"  
        Jesse Pinkman

Afin de pouvoir lancer le bot il va te falloir faire quelques modifications préalables.
- Récupérer tes clés API de ton compte [twitter développeur](https://developer.twitter.com/)
- Enregistrer ces clés dans un fichier .env à la racine de ton dossier et l'ajouter dans un fichier .gitignore (si tu ne suis pas attentivement ce point tout le monde pourra avoir accés à ton API !!)
- Ton fichier .env devra donc contenir :  
TWITTER_CONSUMER_KEY  
TWITTER_CONSUMER_SECRET  
TWITTER_ACCESS_TOKEN  
TWITTER_ACCESS_TOKEN_SECRET  
et éventuellement pour l'option "2" du programme :  
POTOS ( la valeur à lui attribuer devra être au format POTOS = "Poto_1 Poto_2 Poto_3 ..." )

## NOTES
N'oublie pas de bien mettre tes clés API et autres données confidentielles dans ton fichier ".env" lui-même mentionné dans le ".gitignore" (pas besoin de te rappeler pourquoi..).

### AUTEUR     ![Donatello](https://www.informatiquegifs.com/tortues/gifs10.gif)
 - Alexandre Gasior
