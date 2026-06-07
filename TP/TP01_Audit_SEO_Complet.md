# TP 01 — Audit SEO Complet d'un Site Web

## Objectifs
- Réaliser un audit SEO technique complet
- Utiliser les outils professionnels (Screaming Frog, Google Search Console, Lighthouse)
- Produire un rapport d'audit avec préconisations actionnables

---

## Outils nécessaires
- [Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/) (version gratuite)
- Google Search Console (ou rapport de démonstration fourni)
- Google PageSpeed Insights / Lighthouse
- Mobile-Friendly Test
- Extension Web Developer Toolbar

---

## Exercice 1 — Crawl du site avec Screaming Frog (40 min)

**Consigne :** Lancez Screaming Frog sur un site de votre choix (votre propre site ou un site fictif fourni par le formateur).

**Étapes :**
1. Configurer le crawl : agents user-agent "Googlebot", respecter robots.txt
2. Lancer le crawl (limitez à 500 URLs pour la version gratuite)
3. Exporter les résultats

**À analyser :**

| Métrique | Valeur | Diagnostic |
|----------|--------|------------|
| Nombre total d'URLs crawlées | | |
| URLs OK (200) | | |
| URLs 301 (redirections) | | |
| URLs 404 (non trouvées) | | |
| URLs 5XX (erreurs serveur) | | |
| URLs avec meta robots noindex | | |
| URLs avec canonical | | |
| URLs avec title dupliqués | | |
| URLs sans title | | |
| URLs sans meta description | | |
| Temps de réponse moyen | | |

**Livrable :** Tableau récapitulatif avec les actions correctives pour chaque problème.

---

## Exercice 2 — Analyse des balises On-Page (30 min)

**Consigne :** Utilisez les exports de Screaming Frog pour analyser la qualité des balises.

**1. Analyse des Title Tags :**
- Combien de pages ont un title > 60 caractères ?
- Combien de pages ont un title < 30 caractères ?
- Combien de titles sont dupliqués ?
- Proposez des corrections pour 5 titles problématiques.

**2. Analyse des Meta Descriptions :**
- Combien de pages ont une meta description > 160 caractères ?
- Combien de pages n'ont pas de meta description ?
- Proposez 5 meta descriptions optimisées.

**3. Analyse des Headings :**
- Combien de pages ont plus d'un H1 ?
- Combien de pages n'ont pas de H1 ?
- La structure H1 → H2 → H3 est-elle logique sur les pages principales ?

---

## Exercice 3 — Analyse des Core Web Vitals (30 min)

**Consigne :** Testez 5 pages du site avec Google PageSpeed Insights.

| Page | LCP | INP | CLS | Score Mobile | Score Desktop |
|------|-----|-----|-----|-------------|--------------|
| Accueil | | | | | |
| Catégorie | | | | | |
| Article | | | | | |
| Contact | | | | | |
| Produit | | | | | |

**Rendez-vous :**
1. Quelles sont les pages les plus lentes ? Pourquoi ?
2. Quelles sont les recommandations de PageSpeed Insights ?
3. Classez les corrections par priorité (rapides vs complexes).
4. Quel est l'impact potentiel sur le classement SEO ?

---

## Exercice 4 — Analyse du maillage interne (25 min)

**Consigne :** Dans Screaming Frog, allez dans l'onglet "Internal Links".

1. Combien de pages ont moins de 3 liens internes entrants ?
2. Identifiez les pages orphelines (0 liens internes entrants).
3. Quelle est la profondeur de clics moyenne du site ?
4. Quelles pages sont les plus liées (hubs) ?
5. Proposez un plan de maillage interne pour corriger les problèmes.

**Visualisation :** Utilisez la vue "Force-Directed Graph" de Screaming Frog (si disponible) pour visualiser le maillage.

---

## Exercice 5 — Vérification de l'indexation (20 min)

**Consigne :** Vérifiez l'indexation du site avec 3 méthodes différentes.

**Méthode 1 — Google Search Console :**
- Combien de pages sont indexées ?
- Y a-t-il des erreurs de couverture ?
- Quelles pages sont exclues et pourquoi ?

**Méthode 2 — Commande site:**
```
site:exemple.com
```
- Combien de résultats Google retourne-t-il ?
- Comparez avec le nombre de pages crawlées par Screaming Frog.

**Méthode 3 — URL Inspection Tool :**
- Testez 5 URLs spécifiques.
- Sont-elles indexées ? Si non, pourquoi ?

---

## Exercice 6 — Analyse des concurrents (25 min)

**Consigne :** Analysez 3 concurrents directs et comparez avec le site audité.

| Critère | Site audité | Concurrent 1 | Concurrent 2 | Concurrent 3 |
|---------|-------------|--------------|--------------|--------------|
| Pages indexées (site:) | | | | |
| Vitesse mobile | | | | |
| Balises title optimisées | | | | |
| Rich snippets | | | | |
| Backlinks (domaines) | | | | |
| Trafic estimé | | | | |
| Mots-clés positionnés | | | | |

**Outils recommandés :** Ubersuggest (gratuit), SimilarWeb, Wappalyzer.

---

## Exercice 7 — Rédaction du rapport d'audit (30 min)

**Consigne :** Rédigez un rapport d'audit SEO complet structuré comme suit :

1. **Résumé exécutif** (1 page max)
   - Score global du site (A/B/C/D/E)
   - 3 problèmes critiques + 3 recommandations prioritaires
   - Estimation du gain de trafic potentiel

2. **Audit technique** (Screaming Frog, GSC)
   - Analyse du crawl et de l'indexation
   - Erreurs 4xx/5xx
   - Vitesse et Core Web Vitals
   - Mobile-friendliness

3. **Audit On-Page**
   - Analyse des balises
   - Qualité du contenu
   - Maillage interne

4. **Audit Off-Page**
   - Profil de backlinks
   - Présence dans les annuaires
   - E-E-A-T

5. **Plan d'action**
   - Priorité haute (urgent, corrigé sous 1 semaine)
   - Priorité moyenne (corrigé sous 1 mois)
   - Priorité basse (à planifier)
   - Estimation du temps et des ressources nécessaires

---

## Exercice 8 — Présentation orale (15 min par groupe)

**Consigne :** Présentez votre audit à la classe en 15 min :
1. Problèmes principaux (3 min)
2. Recommandations clés (5 min)
3. Plan d'action priorisé (5 min)
4. Questions (2 min)

**Critères d'évaluation :**
- Pertinence des problèmes identifiés
- Qualité des recommandations
- Priorisation des actions
- Clarté de la présentation
- Réponses aux questions

---

## Rendu final

**À rendre :**
1. Rapport d'audit PDF (5-10 pages)
2. Présentation (5-10 slides)
3. Données brutes (export Screaming Frog + captures d'écran)

**Barème :**
- Rapport écrit : /20
- Présentation : /10
- Pertinence des préconisations : /10
- Total : /40
