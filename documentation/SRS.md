# Cahier des charges (SRS léger) — <Nom du projet>
**Équipe :** <Noms>  
**Date :** <YYYY-MM-DD>  
**Version :** <v0.1 / v1.0>

---

## 1. Contexte & objectif
- **Contexte :**Ce projet a été réalisé pour développer une application web de réservation d’hôtel l’idée est de simuler un vrai site où un utilisateur peut choisir une chambre et voir le prix total
- **Objectif principal :** Permettre à l’utilisateur de réserver une chambre avec des options et voir un résumé clair avec le prix
- **Parties prenantes :** Utilisateur Développeurs

## 2. Portée (Scope)
### 2.1 Inclus (IN)
IN-1 : Choisir une chambre (simple, double, suite…)
IN-2 : Ajouter des options (linge, taxi, minibar…)
IN-3 : Choisir les repas
IN-4 : Voir le prix total
IN-5 : Voir un résumé de la réservation
IN-6 : Connexion et inscription

### 2.2 Exclu (OUT)
OUT-1 : Paiement en ligne réel
OUT-2 : Gestion admin complète
OUT-3 : Notifications email

## 3. Acteurs / profils utilisateurs
veut réserver une chambre
veut voir le prix total
veut choisir ses options
développe le système
maintient le code

## 4. Exigences fonctionnelles (FR)
FR-1 : Le système doit permettre de choisir un type de chambre
FR-2 : Le système doit récupérer le prix depuis la base de données
FR-3 : Le système doit permettre d’ajouter des options
FR-4 : Le système doit calculer le prix total
FR-5 : Le système doit afficher un résumé
FR-6 : Le système doit permettre de choisir les repas
FR-7 : Le système doit permettre la connexion et inscription
## 5. Exigences non fonctionnelles (NFR)
NFR-1 (Performance) : Le système doit répondre rapidement (moins de 2 secondes)
NFR-2 (Sécurité) : L’utilisateur doit se connecter pour accéder au système
NFR-3 (UX) : L’interface doit être simple et facile à utiliser
NFR-4 (Qualité) : Le code doit être organisé avec des design patterns

## 6. Contraintes
C-1 (Technologie) : ASP.NET WebForms + C#
C-2 (Base de données) : SQL Server LocalDB
C-3 (Plateforme) : Application web
C-4 (Outils) : Visual Studio

---

## 7. Données & règles métier (si applicable)
- **Entités principales :** 
Chambre
Hotel
Options
- **Règles métier :** 
Le prix de base vient de la base de données
Chaque option ajoute un prix
Le total = prix base + options
L’utilisateur ne peut choisir qu’un repas par catégorie

---

## 8. Hypothèses & dépendances
### 8.1 Hypothèses
H-1 : L’utilisateur a accès à internet
H-2 : La base de données est disponible
H-3 : Les données sont correctes dans la base

### 8.2 Dépendances
H-1 : L’utilisateur a accès à internet
H-2 : La base de données est disponible
H-3 : Les données sont correctes dans la base

---

## 9. Critères d’acceptation globaux (Definition of Done – mini)
- [ ] Fonctionnalités livrées et testées
- [ ] Tests unitaires présents
- [ ] Gestion d’erreurs minimale
- [ ] Documentation à jour (UML + ADR si requis)
