# TD 02 — Indexation et Technique SEO

## Objectifs
- Maîtriser le processus d'indexation technique
- Savoir configurer robots.txt et sitemap XML
- Comprendre et utiliser les balises meta robots et canonical
- Optimiser le budget de crawl

---

## Exercice 1 — Diagnostic d'indexation (25 min)

**Consigne :** Analysez les cas suivants et dites ce qui ne va pas.

**Cas A :** Un site e-commerce de 50 000 produits. Google Search Console montre que seulement 12 000 pages sont indexées.

1. Quelles sont les causes possibles de cette faible indexation ?
2. Quels outils utiliser pour identifier les pages non indexées ?
3. Proposez un plan d'action en 5 étapes.

**Cas B :** Un blog technique publie 3 articles par semaine. Les articles mettent en moyenne 3 semaines à être indexés.

1. Est-ce normal ? Quels facteurs influencent la vitesse d'indexation ?
2. Comment accélérer l'indexation des nouveaux articles ?
3. Que doit-on vérifier en premier ?

**Cas C :** Un site vitrine voit ses pages dé-indexées du jour au lendemain.

1. Quelles sont les causes possibles (charnières, pénalités, erreurs techniques) ?
2. Comment vérifier la cause via Google Search Console ?
3. Quelle est la procédure de demande de ré-indexation ?

---

## Exercice 2 — Rédaction d'un fichier robots.txt (20 min)

**Consigne :** Écrivez le fichier robots.txt pour les scénarios suivants.

**Scénario 1 — Site e-commerce :**
- Autoriser tous les crawlers
- Bloquer l'accès au dossier /admin/
- Bloquer l'accès au dossier /panier/
- Bloquer les URLs avec paramètres de session (?session=)
- Déclarer l'emplacement du sitemap : https://exemple.com/sitemap.xml

**Scénario 2 — Site média (actualités) :**
- Autoriser Googlebot
- Bloquer Bingbot du dossier /prive/
- Autoriser complètement Googlebot News
- Bloquer tous les autres crawlers
- Déclarer le sitemap news

**Scénario 3 — Correction d'erreur :**
Le fichier robots.txt suivant contient des erreurs. Corrigez-le.

```
User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
Sitemap: sitemap.xml
User-agent: Googlebot
Disallow:
```

**Questions :**
1. Quelle est la différence entre une directive `Disallow:` vide et l'absence de `Disallow:` ?
2. Que se passe-t-il si le robots.txt est inaccessible (erreur 500) ?
3. Comment tester un fichier robots.txt dans Google Search Console ?
4. Le robots.txt empêche-t-il l'indexation ? Expliquez.

---

## Exercice 3 — Création d'un Sitemap XML (20 min)

**Consigne :** Créez le sitemap XML pour un site de 8 pages.

Pages :
1. https://exemple.com/ (dernière modif : 2025-12-01, priorité 1.0, hebdomadaire)
2. https://exemple.com/a-propos (2025-11-15, priorité 0.5, mensuelle)
3. https://exemple.com/services (2025-12-10, priorité 0.8, hebdomadaire)
4. https://exemple.com/blog/article-1 (2025-12-15, priorité 0.6, hebdomadaire)
5. https://exemple.com/blog/article-2 (2025-12-14, priorité 0.6, hebdomadaire)
6. https://exemple.com/contact (2025-10-01, priorité 0.3, mensuelle)
7. https://exemple.com/mentions-legales (2025-09-01, priorité 0.1, annuelle)
8. https://exemple.com/faq (2025-12-01, priorité 0.4, mensuelle)

**Formation :** 50 000 URLs max par sitemap. Que faire si le site en a 120 000 ?
**Index :** Écrivez un sitemap index pour 3 sitemaps.

---

## Exercice 4 — Balises Meta Robots et Canonical (20 min)

**Consigne :** Pour chaque cas, indiquez la balise HTML appropriée.

| Cas | Solution |
|-----|----------|
| 1. Page de remerciement après inscription (ne doit pas être indexée) | |
| 2. Page de filtres de recherche (contenu duplicate) | |
| 3. Article accessible via 2 URLs différentes (/article et /article?ref=email) | |
| 4. Page d'impression (ne doit pas être indexée, ne pas suivre les liens) | |
| 5. Page de catégorie avec pagination (page 2, 3...) | |
| 6. PDF hébergé sur le site (doit être indexé mais pas les liens) | |

**Questions :**
1. Quelle est la différence entre `noindex` et `nofollow` ?
2. Peut-on utiliser `noindex` avec une balise `canonical` ? Pourquoi ?
3. Que se passe-t-il si deux pages ont une balise canonical pointant l'une vers l'autre ?
4. Comment Google choisit-il la page canonique si aucune balise n'est spécifiée ?
5. **Erreur fréquente :** Pourquoi ne doit-on pas mettre de canonical sur une pagination vers la page 1 ?

---

## Exercice 5 — Budget de Crawl : étude de cas (25 min)

**Cas pratique :** Vous gérez un site de 200 000 pages avec les caractéristiques suivantes :
- 150 000 pages sont de faible qualité (contenu fin, pages vides, pages d'erreur)
- Temps de réponse serveur moyen : 3 secondes
- 15% des pages retournent des erreurs 404
- Le site a un PageRank moyen (domaine jeune de 2 ans)
- 50 erreurs 500 par jour

**Questions :**
1. Calculez le ratio de pages de qualité / pages totales. Quel diagnostic faites-vous ?
2. Quelles pages devez-vous supprimer ou noindexer en priorité ?
3. Quel est l'impact du TTFB sur le crawl budget ?
4. Combien d'erreurs 500 sont acceptables par jour ? Justifiez.
5. Proposez un plan d'optimisation du crawl budget sur 3 mois.

**Calcul :** Googlebot a un budget de 10 000 requêtes par jour pour ce site. Combien de pages de qualité seront crawlées par jour si 30% du budget est gaspillé sur les pages inutiles ?

---

## Exercice 6 — Cas concrets d'indexation (15 min)

**Consigne :** Répondez par écrit aux situations suivantes.

1. **Site multilingue :** Comment gérer l'indexation d'un site en français et en anglais ?
2. **Site One-Page :** Un site one-page avec 10 sections peut-il avoir 10 entrées d'index ?
3. **JavaScript :** Une application React sans SSR est-elle bien indexée par Google ?
4. **PDF indexés :** Un site a 5000 PDF. Faut-il les indexer ? Comment les optimiser ?
5. **URSS :** Un site change de domaine. Comment éviter une perte d'indexation ?

---

## Exercice 7 — Mots-croisés de l'indexation (15 min)

```
Horizontal :
1. Fichier qui liste les pages à indexer (7 lettres)
2. Balise pour éviter le contenu dupliqué (9 lettres)
3. Première étape du pipeline Google (7 lettres)
4. Budget de... (5 lettres)

Vertical :
5. Robot d'exploration Google (9 lettres)
6. Directive pour ne pas indexer (7 lettres)
7. Temps avant première réponse serveur (4 lettres)
8. Outil Google pour surveiller l'indexation (6+7 lettres)
```

---

## Pour aller plus loin

- **Pratique :** Analysez le robots.txt et le sitemap de 3 sites de votre choix. Rapportez vos observations.
- **Outil :** Utilisez Screaming Frog sur un site de petite taille (50-100 pages). Combien de pages sont indexables vs non-indexables ?
- **Lecture :** Chapitre "Budget de Crawl" du rapport — résumez les 5 facteurs les plus importants.
