# TD 04 — SEO Technique Avancé et Off-Page

## Objectifs
- Maîtriser les Core Web Vitals et la performance web
- Comprendre le Mobile-First Indexing et les données structurées
- Savoir élaborer une stratégie de netlinking
- Appréhender E-E-A-T et le SEO Sémantique

---

## Exercice 1 — Diagnostic Core Web Vitals (25 min)

**Cas pratique :** Voici les métriques Core Web Vitals d'un site e-commerce :

| Métrique | Valeur | Statut (Bon/À améliorer/Mauvais) |
|----------|--------|----------------------------------|
| LCP | 4.2s | |
| INP | 180ms | |
| CLS | 0.35 | |
| TTFB | 1.8s | |
| FCP | 2.5s | |

**Questions :**
1. Complétez la colonne "Statut" avec les seuils Google.
2. LCP est mauvais. Citez 5 causes possibles et 5 solutions.
3. CLS est mauvais. Expliquez ce qui provoque des "layout shifts" et comment les corriger.
4. Quel est l'impact des Core Web Vitals sur le classement Google ?
5. Quels outils utilisez-vous pour mesurer les Core Web Vitals ?

**Calcul :** Un site a un LCP de 4.2s. L'équipe technique estime pouvoir réduire à 2.0s. Combien de temps gagnera l'utilisateur ? Quel est l'objectif à atteindre pour être dans le vert ?

---

## Exercice 2 — Optimisation de la performance web (20 min)

**Consigne :** Pour chaque technique, expliquez son fonctionnement et son impact SEO.

| Technique | Fonctionnement | Impact SEO (★ à ★★★★★) |
|-----------|---------------|----------------------|
| CDN | | |
| Lazy Loading | | |
| Code Splitting | | |
| Tree Shaking | | |
| Critical CSS | | |
| Brotli vs Gzip | | |
| HTTP/2 vs HTTP/3 | | |
| Preload / Prefetch | | |
| Server Push | | |
| Cache Browser | | |

**Questions :**
1. Classez ces techniques par priorité d'implémentation.
2. Quelle est la différence entre `preload` et `prefetch` ?
3. Un CDN est-il toujours bénéfique pour le SEO ? Quand éviter ?
4. Comment vérifier si un site utilise HTTP/2 ou HTTP/3 ?

---

## Exercice 3 — Optimisation Mobile et Mobile-First Indexing (15 min)

**Consigne :** Répondez aux questions suivantes.

1. Quelle est la différence entre "mobile-friendly" et "mobile-first" ?
2. Google utilise principalement la version mobile pour l'indexation depuis 2021. Qu'est-ce que cela implique concrètement ?
3. Auditez un site de votre choix sur mobile (via l'outil Mobile-Friendly Test de Google).
   - La page est-elle compatible mobile ?
   - Quels problèmes de rendu sont signalés ?
   - Les textes sont-ils lisibles sans zoom ?
   - Les éléments cliquables sont-ils assez espacés ?
4. Un site desktop-only peut-il être bien classé sur mobile ? Expliquez.
5. Proposez 5 bonnes pratiques pour le Mobile-First Indexing.

---

## Exercice 4 — Données structurées (Schema Markup) (25 min)

**Consigne :** Écrivez les données structurées JSON-LD pour les cas suivants.

**Cas 1 — Article de blog :**
- Titre : "Comment optimiser son SEO en 2026"
- Auteur : Jean Dupont
- Date publication : 2026-01-15
- Description : "Guide complet des techniques SEO 2026"
- Image : https://exemple.com/image.jpg
- URL : https://exemple.com/blog/seo-2026

**Cas 2 — Organisation (entreprise) :**
- Nom : Agence WebPro
- Logo : https://exemple.com/logo.png
- URL : https://exemple.com
- Téléphone : +33 1 23 45 67 89
- Adresse : 12 Rue du Web, 75001 Paris
- Note moyenne : 4.5/5 (basée sur 127 avis)

**Cas 3 — Produit :**
- Nom : Formation SEO Complète
- Prix : 497€
- Devise : EUR
- Disponibilité : En stock
- Note : 4.8/5 (89 avis)
- Marque : WebPro Academy

**Questions :**
1. Qu'est-ce qu'un "rich snippet" ? Donnez 3 exemples.
2. Quels formats de données structurées Google supporte-t-il (JSON-LD, Microdata, RDFa) ?
3. Pourquoi JSON-LD est-il recommandé par Google ?
4. Comment tester ses données structurées ? Citez 2 outils.
5. Les données structurées sont-elles un facteur de classement direct ?

---

## Exercice 5 — Netlinking et stratégie de backlinks (30 min)

**Consigne :** Analysez le profil de liens d'un site.

**Profil de liens du site exemple.com :**
- Total backlinks : 1 500
- Domaines référents : 45
- Domaines .edu / .gouv : 2
- Domaines .fr : 20
- Domaines étrangers : 25
- Ratio dofollow/nofollow : 80/20
- Anchor text : "cliquez ici" (40%), "site web" (15%), "meilleur site" (10%), marque (25%), URL brute (10%)
- Pages avec le plus de liens : Accueil (800 liens), /blog (300), /services (200)

**Questions :**
1. Calculez le nombre moyen de backlinks par domaine référent. Est-ce bon ou mauvais ?
2. Le ratio d'ancres "cliquez ici" à 40% est-il naturel ? Expliquez.
3. Pourquoi avoir seulement 2 domaines .edu/.gouv sur 45 est-il un signal ?
4. Que suggère la concentration de 800 liens sur l'accueil ?
5. Le site a-t-il un profil de liens naturel ? Quelles actions recommandez-vous ?
6. Calculez le Trust Flow estimé (justification).

**Cas pratique :** Proposez une stratégie de link building pour ce site :
- 3 techniques de netlinking
- Types de sites cibles
- Types de contenu à créer pour attirer des liens
- KPIs à suivre sur 6 mois

---

## Exercice 6 — E-E-A-T : Évaluation de crédibilité (20 min)

**Consigne :** Évaluez le niveau E-E-A-T des sites suivants sur une échelle de 1 à 10.

| Site | Expérience | Expertise | Autorité | Confiance | Note /10 |
|------|-----------|-----------|----------|-----------|----------|
| Blog santé tenu par un particulier | | | | | |
| Site gouvernemental (sante.fr) | | | | | |
| Article Wikipedia sur le SEO | | | | | |
| Blog d'une agence SEO | | | | | |
| Avis Google d'un restaurant | | | | | |
| Publication LinkedIn d'un expert | | | | | |
| Site marchand avec paiement sécurisé | | | | | |

**Questions :**
1. Qu'est-ce que YMYL (Your Money Your Life) ? Donnez 3 exemples de sites YMYL.
2. Comment un site YMYL peut-il améliorer son E-E-A-T ?
3. Quelle est la différence entre E-A-T et E-E-A-T ? (le E supplémentaire)
4. Google peut-il pénaliser manuellement un site avec un mauvais E-E-A-T ?
5. Proposez une checklist E-E-A-T pour un site de conseils juridiques.

---

## Exercice 7 — SEO Sémantique et Entity SEO (15 min)

**Consigne :** Créez un graphe d'entités pour le sujet "SEO".

1. Identifiez 10 entités liées au SEO
2. Classez-les par catégories (concepts, outils, acteurs, techniques)
3. Dessinez les relations entre elles

**Exemple de structure :**
```
Entité principale : SEO
  ├── Concepts : Indexation, Crawling, Ranking, PageRank
  ├── Techniques : Netlinking, On-Page, Technique, Sémantique
  ├── Outils : Google Search Console, SEMrush, Ahrefs, Screaming Frog
  ├── Acteurs : Google, Bing, Larry Page, Sergey Brin
  └── Métriques : Autorité, Pertinence, Confiance
```

**Questions :**
1. Quelle est la différence entre mot-clé et entité ?
2. Comment Google utilise-t-il le Knowledge Graph pour comprendre les entités ?
3. Qu'est-ce que le "Topic Authority" et comment le construire ?
4. Un site peut-il être une entité dans le Knowledge Graph de Google ?

---

## Exercice 8 — Audit SEO global : mise en situation (30 min)

**Consigne :** Vous intervenez sur le site `exemple.com`. Voici les données :

| Métrique | Valeur |
|----------|--------|
| Pages totales | 350 |
| Pages indexées | 120 |
| Trafic mensuel | 8 500 visites |
| Taux de rebond | 72% |
| Vitesse mobile | 4.8s |
| Core Web Vitals | LCP 5.2s, CLS 0.45, INP 250ms |
| Backlinks | 320 (12 domaines) |
| Pages avec balises title | 200 |
| Pages avec meta description | 85 |
| Pages HTTPS | 350 |
| Pages avec données structurées | 0 |
| Sitemap XML | obsolète (300 URLs) |
| Robots.txt | bloque les images |

**Rédigez un rapport d'audit structuré :**
1. **Problèmes critiques** (à traiter en urgence)
2. **Problèmes importants** (à traiter dans le mois)
3. **Améliorations** (à planifier dans le trimestre)
4. **Priorisation** avec estimation d'impact (★) et effort (★)

---

## Pour aller plus loin

- **Pratique :** Installez Lighthouse et auditez 3 sites concurrents. Comparez les scores.
- **Outil :** Créez un compte Search Console (si vous avez un site) ou explorez le compte de démo.
- **Projet :** Rédigez une stratégie de netlinking complète pour un site fictif (objectifs, techniques, budget).
- **Lecture :** Chapitres "Core Web Vitals", "Données structurées", "Netlinking", "E-E-A-T" du rapport.
