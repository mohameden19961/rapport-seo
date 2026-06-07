# TP 05 — SEO Spécialisé : Local, E-commerce, Migration et A/B Testing

## Objectifs
- Configurer et optimiser une fiche Google Business Profile
- Mettre en œuvre une migration SEO complète
- Optimiser un site e-commerce pour le SEO
- Réaliser des tests A/B SEO et mesurer l'impact

---

## Outils nécessaires
- Google Business Profile (compte Google)
- Google Search Console
- Screaming Frog
- Google Optimize (ou équivalent A/B testing)
- Outil de suivi de position (Sheets ou rank tracker)

---

## Exercice 1 — Configuration Google Business Profile (45 min)

**Consigne :** Créez une fiche Google Business Profile complète pour un commerce local.

### Étape 1 — Création de la fiche
Créez (ou simulez) une fiche GBP avec les informations suivantes :

**Entreprise fictive :**
- Nom : Librairie Le Savoir
- Adresse : 25 Rue des Arts, 75001 Paris
- Téléphone : 01 42 00 00 00
- Site web : https://librairie-le-savoir.fr
- Catégorie principale : Librairie
- Catégories secondaires : Café littéraire, Salon de lecture
- Horaires : Lun-Sam 9h-19h, Fermé dimanche

**À compléter dans la fiche :**
- [ ] Description de l'entreprise (250 caractères max, avec mots-clés locaux)
- [ ] Horaires spéciaux (jours fériés)
- [ ] Attributs (WiFi gratuit, accessible PMR, livraison)
- [ ] Photos (logo, couverture, intérieur, extérieur, produits)
- [ ] Posts Google (3 posts : actualité, promotion, événement)
- [ ] Questions/Réponses (5 questions fréquentes avec réponses)
- [ ] Produits / Services (5 catégories)
- [ ] Attributs de confirmation (masque, distanciation...)

### Étape 2 — Optimisation locale
1. Quels mots-clés locaux cibler dans la description ? (5 mots-clés)
2. Comment choisir les catégories secondaires ?
3. Quelle est la stratégie de photos (nombre, type, fréquence) ?
4. Comment gérer les attributs "Confirmé par le propriétaire" ?

### Étape 3 — Stratégie d'avis
1. Rédigez 3 réponses à des avis (1 positif, 1 neutre, 1 négatif)
2. Proposez un processus pour obtenir 10 nouveaux avis par mois
3. Comment répondre à un avis négatif sans se mettre en danger ?
4. Quel est l'impact des réponses aux avis sur le classement local ?

---

## Exercice 2 — Migration SEO : Simulation complète (60 min)

**Consigne :** Vous migrez le site `https://ancien-site.com` vers `https://nouveau-site.com`.

### Phase 1 — Cartographie des URLs (15 min)

**Anciennes URLs → Nouvelles URLs :**

| Ancienne URL | Nouvelle URL | Type (301/410) |
|-------------|--------------|----------------|
| `/index.php` | `/` | |
| `/article.php?id=1` | `/blog/seo-guide` | |
| `/produit.php?cat=5&id=12` | `/produits/chaussures` | |
| `/about-us.html` | `/a-propos` | |
| `/old-category/` | `/categorie/` | |
| `/blog/ancien-article-importants.html` | `/blog/nouvel-article` | |
| `/page-supprimee.html` | _(supprimée)_ | |
| `/tag/` | _(supprimée)_ | |

1. Complétez le tableau avec les types de redirection appropriés
2. Quels sont les risques d'une redirection 302 au lieu de 301 ?

### Phase 2 — Implémentation technique (20 min)

**Règles de réécriture (Apache .htaccess) :**
```apache
# Règles de redirection 301
RewriteEngine On
RewriteRule ^index\.php$ https://nouveau-site.com/ [L,R=301]
RewriteRule ^article\.php\?id=1$ https://nouveau-site.com/blog/seo-guide [L,R=301]
# Complétez les règles manquantes...

# Gestion des erreurs 404 personnalisées
ErrorDocument 404 /404.html
```

**Questions :**
1. Comment gérer les paramètres d'URL (?session=, ?utm_source=) ?
2. Faut-il conserver l'ancien robots.txt ? Le modifier ?
3. Comment mettre à jour le sitemap XML pendant la migration ?

### Phase 3 — Suivi post-migration (15 min)

**Checklist quotidienne (J+1 à J+30) :**

| Jour | Action | Outil |
|------|--------|-------|
| J+1 | | |
| J+2 | | |
| J+3 | | |
| J+7 | | |
| J+14 | | |
| J+30 | | |

**KPIs de suivi :**
- Trafic organique : _____ vs _____ (avant/après)
- Pages indexées : _____ vs _____
- Taux d'erreur 4xx : _____ vs _____
- Positions mots-clés principaux : _____ vs _____

### Phase 4 — Gestion de crise (10 min)

Vous recevez une alerte : 2 jours après la migration, le trafic a chuté de 60%.

1. Quelles sont les 3 premières choses que vous vérifiez ?
2. Quels outils utilisez-vous pour chaque vérification ?
3. Quelles décisions prenez-vous à J+2 ?
4. À quel moment décidez-vous de "revenir en arrière" ?

---

## Exercice 3 — Site E-commerce : Audit et Optimisation (60 min)

**Consigne :** Vous auditez et optimisez un site e-commerce de 500 produits.

### Partie A — Architecture du site

**Structure actuelle :**
```
Accueil
├── Catégories (12)
│   ├── Sous-catégories (48)
│   │   ├── Pages produits (500)
│   │   └── Pages variantes (2000)
├── Blog (30 articles)
├── Panier
├── Compte
└── Pages légales
```

**Questions :**
1. La profondeur de clics est-elle optimale ? (combien de clics pour un produit ?)
2. Proposez une architecture plus plate (flat architecture).
3. Comment gérer le contenu dupliqué entre les variantes (couleurs, tailles) ?
4. Faut-il indexer les pages de sous-catégories vides ?

### Partie B — Filtres et facettes

Le site a des filtres : prix, couleur, taille, marque, matière.

**Problème :** Chaque filtre crée une URL unique → 15 000 URLs générées.

1. Quelles sont les bonnes pratiques pour gérer les URLs de filtres ?
2. Faut-il utiliser `noindex` ou `canonical` sur les pages de filtres ?
3. Qu'est-ce que le "contenu fin" (thin content) des pages de filtres et comment l'éviter ?
4. Proposez une stratégie de gestion des facettes SEO-friendly.

### Partie C — Page catégorie optimisée

Créez une page catégorie modèle pour la catégorie "Chaussures de running".

**Éléments obligatoires :**
- [ ] Title tag optimisé (50-60 car.)
- [ ] Meta description (150-160 car.)
- [ ] H1 contenant le mot-clé principal
- [ ] Texte de catégorie (150-200 mots en haut de page)
- [ ] Grille produits avec balisage schema.org
- [ ] Fil d'Ariane (BreadcrumbList JSON-LD)
- [ ] Filtres avec gestion SEO
- [ ] Pagination avec rel="next"/"prev" (ou alternative)
- [ ] Liens vers sous-catégories
- [ ] Images catégorie optimisées

### Partie D — Pages produits en masse

1. Comment générer des descriptions uniques pour 500 produits sans créer de contenu dupliqué ?
2. Quelle est la structure de données structurées (Product, Offer, AggregateRating) ?
3. Comment gérer les produits hors stock ? Les supprimer ? Les noindexer ?
4. Quel est l'impact des avis et du classement par note sur le SEO ?

---

## Exercice 4 — A/B Testing SEO (45 min)

**Consigne :** Concevez et analysez des tests A/B pour améliorer le SEO.

### Test 1 — Title Tag

**Hypothèse :** Un title plus long avec des mots-clés additionnels améliore le CTR.

| Version | Title |
|---------|-------|
| Contrôle (A) | `Chaussures de running Homme | RunTech` |
| Test (B) | `Chaussures de running Homme - RunTech Ultra-Grip Pro | Trail et Route` |

**Protocole :**
1. Combien de pages inclure dans le test ? (justifiez)
2. Quelle est la durée minimale du test ?
3. Quels KPIs mesurer ?
4. À partir de quel seuil de significativité concluez-vous ?

### Test 2 — Meta Description

**Hypothèse :** Une meta description avec une question + appel à l'action améliore le CTR.

| Version | Meta Description |
|---------|-----------------|
| Contrôle (A) | `Découvrez nos chaussures de running Homme. Grande sélection de modèles RunTech. Livraison rapide.` |
| Test (B) | `Vous cherchez des chaussures de running ? Essayez l'Ultra-Grip Pro. Testée par 234 coureurs ⭐ 4.7/5. Livraison offerte dès 99€.` |

**Questions :**
1. Quels sont les risques du test A/B sur les meta descriptions ?
2. Google réécrit les meta descriptions. Comment savoir si votre test est annulé par Google ?
3. Comment segmenter les résultats par type de requête ?

### Test 3 — Structure de page

**Hypothèse :** Ajouter un sommaire interactif (Table of Contents) en haut de l'article réduit le taux de rebond et améliore le temps passé.

1. Concevez le protocole de test
2. Quels sont les biais potentiels ?
3. Comment mesurer l'impact SEO (pas seulement UX) ?

### Analyse de résultats A/B

| Métrique | Contrôle (A) | Test (B) | Variation | Significatif ? |
|----------|-------------|----------|-----------|----------------|
| Impressions | 12 500 | 13 200 | +5.6% | p=0.12 |
| Clics | 375 | 468 | +24.8% | p=0.03 |
| CTR | 3.0% | 3.55% | +18.3% | p=0.02 |
| Position moyenne | 8.2 | 8.5 | -0.3 | p=0.45 |
| Taux de rebond | 62% | 58% | -4 pts | p=0.08 |
| Temps sur page | 2m15s | 2m45s | +22% | p=0.04 |

**Questions :**
1. Quelle est votre conclusion sur le test B ?
2. Quels résultats sont statistiquement significatifs (p < 0.05) ?
3. La position moyenne baisse légèrement. Faut-il s'inquiéter ?
4. Implémenteriez-vous la version B sur l'ensemble du site ? Pourquoi ?
5. Quelles sont les limites de ce test ?

---

## Exercice 5 — SEO pour CMS : Configuration WordPress (30 min)

**Consigne :** Configurez WordPress pour un SEO optimal.

**Installation neuve de WordPress. À configurer :**

### Partie A — Réglages WordPress
- [ ] Permaliens : structure personnalisée `/%postname%/`
- [ ] Titre du site : optimisé SEO
- [ ] Slogan : pertinent ou masqué
- [ ] Visibilité : indexation autorisée
- [ ] Lecture : page d'accueil statique (page "Accueil")
- [ ] Discussion : fermer les commentaires après 30 jours
- [ ] Médias : organiser par dossiers (mois)

### Partie B — Plugins SEO

| Plugin | Fonction | Configuration clé |
|--------|----------|-------------------|
| Yoast SEO / Rank Math | | |
| WP Rocket / W3 Total Cache | | |
| Smush / ShortPixel | | |
| Redirection | | |
| Wordfence / Sucuri | | |

1. Complétez le tableau
2. Quels plugins éviter (bloat, conflits, sécurité) ?
3. Y a-t-il des plugins à ne JAMAIS installer ? Lesquels ?

### Partie C — Configuration avancée
1. Générez et soumettez le sitemap XML
2. Configurez les données structurées (Organization, Article, BreadcrumbList)
3. Optimisez la base de données (requêtes, index, cache)
4. Mettez en place un CDN (Cloudflare, etc.)
5. Configurez la pagination (rel next/prev ou équivalent)

---

## Exercice 6 — Rapport d'audit SEO Spécialisé (30 min)

**Consigne :** Rédigez un rapport d'audit pour un site e-commerce local.

**Données du site :**
- Site : quincaillerie-en-ligne.fr
- Type : E-commerce de quincaillerie (3 000 produits)
- Zone : France métropolitaine + Belgique
- Trafic mensuel : 18 000 visites
- Taux de conversion : 1.8%
- Panier moyen : 65 €

**Structure du rapport :**

1. **SEO Local** (10 points)
   - Fiche Google Business Profile
   - Citations et cohérence NAP
   - Avis clients
   - Pages locales (magasins)

2. **SEO E-commerce** (10 points)
   - Architecture du site
   - Pages catégories
   - Fiches produits
   - Gestion des variantes et filtres

3. **SEO Technique** (10 points)
   - Vitesse et Core Web Vitals
   - Mobile-friendliness
   - Données structurées
   - Internationalisation (France/Belgique)

4. **Plan d'action priorisé** (10 actions)

---

## Rendu final

**À rendre :**
1. Fiche Google Business Profile complète (PDF ou capture d'écran)
2. Plan de migration SEO (avec mapping URLs + règles .htaccess)
3. Audit e-commerce complet (checklist de 30 points)
4. Protocole et résultats de test A/B
5. Configuration WordPress optimisée

**Barème :**
- Google Business Profile : /10
- Plan de migration : /10
- Audit e-commerce : /10
- A/B Testing : /10
- Configuration CMS : /10
- Total : /50
