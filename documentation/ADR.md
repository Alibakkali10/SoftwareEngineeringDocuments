# Architecture Decision Records ADR-<NN> — <Titre de la décision>
**Statut :** Proposed | Accepted | Rejected | Superseded  
**Date :** <YYYY-MM-DD>  
**Décideurs :** <noms>  
**Contexte projet :** <nom du projet / module>

---

## 1. Contexte
- **Problème / besoin :On avait un code un peu désorganisé au début surtout dans les pages ASPX où tout était mélangé
- **Contraintes :Temps limité Projet en équipe Doit utiliser des design patterns
- **Forces en présence :simplicité du code flexibilité facilité de maintenance

---

## 2. Décision
On a décidé d’utiliser plusieurs design patterns pour améliorer la structure du projet.
- Nous choisissons d'utiliser Factory, Decorator et Facade
- Pour :rendre le code plus propre et plus facile à comprendre

---

## 3. Alternatives considérées
### Option A — Sans design patterns
- **Avantages :**plus rapide à coder
- **Inconvénients :** code désorganisé
  difficile à modifier
  beaucoup de répétition

### Option B — Utiliser des design patterns
- **Avantages :** code mieux structuré
  plus facile à comprendre
  plus flexible
- **Inconvénients :** <...>

---

## 4. Justification (Pourquoi cette décision ?)
Les design patterns permettent d’avoir une meilleure architecture
Ça facilite le travail en équipe
Ça rend le projet plus professionnel

---

## 5. Conséquences
### Positives
Code plus propre
Facile d’ajouter des options (Decorator)
Création des objets simplifiée (Usine)
Pages ASPX plus simples (Facade)

### Négatives / Risques
- <...>

### Impact sur l’architecture / le code
Ajout de plusieurs classes (Factory, Decorator, Facade)
Modification des pages ASPX pour utiliser la Facade
Organisation du code améliorée
## 6. Plan d’implémentation (court)
 Étape 1 : créer les classes Factory pour les suites
 Étape 2 : ajouter les Decorators pour les options
 Étape 3 : créer la Facade pour simplifier l’appel dans ASPX
 Étape 4 : tester le fonctionnement

## 7. Validation
Le prix se calcule correctement
Les options s’ajoutent bien
Le code ASPX est plus simple
L’application fonctionne sans erreur
## 8. Liens
- UML : <lien/nom de fichier>
- Issue/Tâche : <lien>
- Référence : <doc officiel / cours>
