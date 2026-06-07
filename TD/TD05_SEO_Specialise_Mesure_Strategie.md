# TD 05 — SEO Spécialisé, Mesure et Stratégie

## Objectifs
- Maîtriser le SEO Local, E-commerce et CMS
- Savoir utiliser Google Search Console et Google Analytics 4
- Comprendre l'impact de l'IA sur le SEO
- Élaborer un plan d'action stratégique

---

## Exercice 1 — SEO Local : Audit de visibilité locale (25 min)

**Consigne :** Vous gérez le SEO d'une pizzeria à Lyon. Analysez sa visibilité locale.

**Étape 1 — Google Business Profile :**
1. Créez une fiche GBP fictive complète (nom, adresse, téléphone, horaires, catégories, photos)
2. Quelles informations sont obligatoires pour apparaître dans le "Local Pack" ?
3. Comment gérer les avis clients (positifs et négatifs) ?
4. Qu'est-ce que les "Google Posts" et à quoi servent-ils ?

**Étape 2 — Citations et NAP :**
```
Nom : Pizza Mia
Adresse : 15 Rue de la République, 69002 Lyon
Téléphone : 04 72 00 00 00
Site web : https://pizzamia-lyon.fr
```

1. Citez 5 annuaires où la fiche doit être présente
2. Pourquoi la cohérence NAP (Name, Address, Phone) est-elle cruciale ?
3. Que se passe-t-il si le NAP est différent sur PagesJaunes et Google ?

**Étape 3 — Avis clients :**
- 45 avis, note moyenne 4.2★
- 3 avis négatifs (1 sur la livraison, 2 sur les prix)
- 42 avis positifs

1. Comment répondre aux avis négatifs ? Rédigez 2 réponses.
2. Quel est l'impact des avis sur le classement local ?
3. Proposez une stratégie pour obtenir plus d'avis positifs.

---

## Exercice 2 — Migration SEO : Plan de migration (30 min)

**Consigne :** Le site `ancien-site.com` migre vers `nouveau-site.com`. Planifiez la migration.

**Données du site :**
- 1 500 pages indexées
- 2 300 backlinks (120 domaines référents)
- Trafic mensuel : 45 000 visites
- Chiffre d'affaires mensuel : 120 000 €

**Étapes :**
1. **Pré-migration (J-30 à J-1) :**
   - Quels audits réaliser avant la migration ?
   - Comment cartographier les URLs anciennes → nouvelles ?
   - Faut-il contacter les sites qui linkent vers l'ancien site ?

2. **Migration (J0) :**
   - Rédigez les règles de redirection 301 pour 5 cas concrets :
     - `/article/123` → `/blog/article-seo`
     - `/produit.php?id=5` → `/produits/chaussures-running`
     - `/cat/` → `/categorie/`
     - `/page-d-accueil-ancienne.html` → `/`
     - `/blog/` → `/actualites/`
   - Comment gérer la période de transition ?

3. **Post-migration (J+1 à J+90) :**
   - Quels KPIs surveiller quotidiennement ?
   - Que faire en cas de baisse de trafic de 40% ?
   - Quand soumettre le nouveau sitemap à Google ?
   - Combien de temps faut-il pour récupérer le trafic ?

**Calcul :** Le site perd 30% de son trafic après migration. Combien de temps pour revenir au niveau initial si la croissance hebdomadaire est de 5% ?

---

## Exercice 3 — SEO E-commerce : Fiche produit optimisée (25 min)

**Consigne :** Optimisez une page produit pour un site e-commerce.

**Produit :** "Chaussures de running Trail Ultra-Grip Pro"

**Caractéristiques :**
- Prix : 149,99 €
- Marque : RunTech
- Disponible en 5 couleurs, 8 pointures (39-46)
- Matériau : Mesh respirant + semelle Vibram
- Poids : 280g
- Avis : 4.7/5 (234 avis)

**Tâches :**
1. Rédigez le **title tag** optimal (50-60 car.)
2. Rédigez la **meta description** (150-160 car.)
3. Structurez les **headings** (H1, H2, H3)
4. Écrivez la **description produit** (200-300 mots SEO)
5. Générez le **JSON-LD Product** complet

**Gestion des variations :**
- Comment gérer les URLs des 5 couleurs × 8 pointures = 40 variantes ?
- Balise canonical : où doit-elle pointer ?
- Faut-il indexer chaque variante ? Pourquoi ?

**Questions :**
1. Qu'est-ce qu'une page "catégorie" optimisée ? Donnez un exemple de structure.
2. Comment gérer les filtres (prix, couleur, taille) sans créer du contenu dupliqué ?
3. Quel est l'impact des avis produits sur le SEO ?
4. Comment optimiser les fiches produits pour le "Shopping Graph" de Google ?

---

## Exercice 4 — Google Search Console : Analyse de données (20 min)

**Consigne :** Analysez les rapports GSC suivants et proposez des actions.

**Rapport de performances (28 jours) :**
| Métrique | Valeur | Variation vs période précédente |
|----------|--------|--------------------------------|
| Impressions | 850 000 | +12% |
| Clics | 25 000 | -8% |
| CTR moyen | 2.9% | -1.8 pts |
| Position moyenne | 12.4 | +1.5 |

**Questions :**
1. Le CTR baisse alors que les impressions augmentent. Quelles sont les causes possibles ?
2. La position moyenne passe de 10.9 à 12.4. Est-ce grave ? Quels mots-clés vérifier en priorité ?
3. Proposez 3 actions pour améliorer le CTR.
4. Quels types de requêtes faut-il analyser en premier ?

**Rapport de couverture :**
| Statut | URLs | Action |
|--------|------|--------|
| Indexées | 1 200 | |
| Avec erreur | 45 | |
| Valides avec avertissement | 120 | |
| Exclues | 3 400 | |

**Questions :**
1. Quels types d'erreurs peuvent apparaître dans ce rapport ?
2. Le nombre de pages exclues (3 400) est élevé par rapport aux indexées (1 200). Est-ce normal ?
3. Quels outils utiliser pour crawler les pages en erreur et les corriger ?

**Rapport de pages mobiles :**
- 23 pages avec problèmes d'utilisation mobile
- 12 pages avec contenu plus large que l'écran
- 8 pages avec texte trop petit
- 3 pages avec éléments cliquables trop proches

**Action :** Proposez des corrections pour chaque type de problème.

---

## Exercice 5 — Google Analytics 4 : Configuration et interprétation (20 min)

**Consigne :** Configurez GA4 pour un site e-commerce et interprétez les données.

**Configuration :**
1. Quels événements doivent être trackés sur un site e-commerce ? (listez-en 10 minimum)
2. Qu'est-ce qu'un "conversion event" ? Comment le configurer ?
3. Quelle est la différence entre "sessions" et "users" dans GA4 ?
4. Comment lier GA4 à Google Search Console ?

**Analyse de rapport :**
| Métrique | Valeur |
|----------|--------|
| Utilisateurs | 32 450 |
| Nouveaux utilisateurs | 28 100 |
| Sessions | 41 200 |
| Taux d'engagement | 54.3% |
| Durée moyenne d'engagement | 2 min 45s |
| Événements clés (achats) | 890 |
| Revenus | 71 200 € |

**Questions :**
1. Calculez le taux de conversion (achats / sessions). Quel diagnostic ?
2. 28 100 nouveaux utilisateurs / 32 450 total => quel est le taux de retour ?
3. Que signifie un "taux d'engagement" de 54.3% ? Est-ce bon ?
4. Quel est le revenu moyen par session ? Par acheteur ?
5. Proposez 3 axes d'amélioration basés sur ces données.

---

## Exercice 6 — KPIs SEO et Tableau de bord (20 min)

**Consigne :** Créez un tableau de bord SEO complet.

**KPIs à suivre mensuellement :**

| Catégorie | KPI | Cible | Fréquence | Outil |
|-----------|-----|-------|-----------|-------|
| Trafic | | | | |
| Positions | | | | |
| Technique | | | | |
| Conversion | | | | |
| Netlinking | | | | |
| Contenu | | | | |

**Questions :**
1. Complétez le tableau avec au moins 15 KPIs
2. Quelle est la différence entre un KPI de "vanity" et un KPI actionnable ?
3. Classez les KPIs par priorité (P1, P2, P3)
4. Proposez un format de reporting mensuel pour un client (1 page max)

**Cas pratique :** Un client vous dit "le trafic a augmenté de 20% ce mois-ci". Quels autres KPIs devez-vous vérifier avant de valider cette bonne nouvelle ?

---

## Exercice 7 — Plan d'Action Stratégique (30 min)

**Consigne :** Élaborez un plan d'action SEO sur 12 mois pour un site de voyage.

**État des lieux :**
- Site : blogvoyages.com (200 articles)
- Trafic mensuel : 35 000 visites
- Domaines référents : 45
- Pages indexées : 180 / 200
- Core Web Vitals : LCP 3.8s, CLS 0.25, INP 180ms
- Taux de conversion (affiliation) : 1.2%
- Revenu mensuel : 4 200 €

**Structure du plan :**

| Phase | Mois | Actions | KPIs | Budget |
|-------|------|---------|------|--------|
| Audit | M1 | | | |
| Technique | M2-M3 | | | |
| Contenu | M2-M6 | | | |
| Netlinking | M4-M9 | | | |
| Suivi | M10-M12 | | | |

**À compléter :**
1. Priorisez les actions par impact et effort (matrice impact/effort)
2. Estimez le budget nécessaire (outils, ressources, freelance)
3. Projetez le trafic à M12 (+XX%)
4. Calculez le ROI attendu
5. Identifiez les risques et les plans de contingence

---

## Exercice 8 — SEO et Intelligence Artificielle (25 min)

**Consigne :** Analysez l'impact de l'IA sur le SEO.

**1. Search Generative Experience (SGE) / AI Overviews :**
- Qu'est-ce que SGE et comment change-t-il la SERP ?
- Quel est l'impact sur le CTR des résultats organiques traditionnels ?
- Comment optimiser son contenu pour apparaître dans les AI Overviews ?

**2. ChatGPT et les moteurs de recherche :**
- ChatGPT remplacera-t-il Google ? Arguments pour et contre.
- Quel est l'impact de l'IA générative sur la recherche de mots-clés ?
- Comment adapter sa stratégie de contenu à l'ère de l'IA ?

**3. Contenu généré par IA :**
- Google pénalise-t-il le contenu généré par IA ? Quelle est sa position officielle ?
- Quelles sont les bonnes pratiques pour utiliser l'IA dans la création de contenu SEO ?
- Comment détecter un contenu 100% IA (et pourquoi l'éviter) ?

**4. Outils IA pour le SEO :**
Citez 5 outils IA utiles pour le SEO et leur cas d'usage :
| Outil | Cas d'usage | Alternative gratuite |
|-------|-------------|---------------------|
| | | |
| | | |
| | | |
| | | |
| | | |

**5. Débat (15 min) :** "L'IA va rendre le SEO obsolète" — Pour ou contre ?

---

## Exercice 9 — SEO Vidéo et Voice Search (15 min)

**Consigne :** Optimisez une vidéo YouTube pour le référencement.

**Titre de la vidéo :** "Comment faire du SEO en 2026 — Guide complet débutant"

**Tâches :**
1. Rédigez un **titre optimisé** (inclure mot-clé principal, < 60 car.)
2. Rédigez la **description** (200+ mots avec mots-clés, timestamps, liens)
3. Créez un **script** pour les 30 premières secondes (accroche + mot-clé)
4. Proposez des **tags** (5-10 tags pertinents)
5. Rédigez un **transcript** avec densité de mots-clés naturelle

**Questions :**
1. Comment optimiser une vidéo pour apparaître dans les résultats Google (pas seulement YouTube) ?
2. Quel est le rôle des "chapitres" dans le référencement vidéo ?
3. Qu'est-ce que le "Voice Search" et comment l'optimisation diffère-t-elle du SEO classique ?
4. Quels types de requêtes sont les plus courants en recherche vocale ?

---

## Exercice 10 — Audit de site CMS (15 min)

**Consigne :** Comparez l'optimisation SEO de 3 CMS populaires.

| Critère SEO | WordPress | Shopify | Webflow |
|-------------|-----------|---------|---------|
| Permaliens personnalisables | | | |
| Balises title/meta natifs | | | |
| Plugin SEO disponibles | | | |
| Données structurées | | | |
| Vitesse native | | | |
| Mobile-friendly | | | |
| Sitemap XML automatique | | | |
| Gestion des redirects | | | |
| Internationalisation | | | |

**Questions :**
1. Complétez le tableau (★/★★/★★★)
2. Quel CMS recommandez-vous pour un site e-commerce de 500 produits ?
3. Quel CMS pour un blog de contenu ?
4. Quels sont les plugins SEO incontournables pour WordPress ? Citez-en 3 et leurs avantages.
5. Qu'est-ce que le "bloat" d'un CMS et quel est son impact sur la performance SEO ?

---

## Pour aller plus loin

- **Pratique :** Créez une fiche Google Business Profile complète pour un commerce fictif.
- **Outil :** Installez Google Analytics 4 sur un site de test et explorez les rapports.
- **Lecture :** Chapitres "SEO Local", "Migration SEO", "E-commerce", "GSC", "GA4", "KPIs", "Plan d'Action", "SEO et IA" du rapport.
- **Veille :** Suivez l'actualité SGE/AI Overviews de Google — comment évolue la SERP ?
