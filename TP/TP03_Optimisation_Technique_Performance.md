# TP 03 — Optimisation Technique et Performance Web

## Objectifs
- Optimiser la vitesse et les Core Web Vitals d'un site web
- Mettre en place les données structurées (Schema Markup)
- Configurer robots.txt, sitemap XML et balises techniques
- Implémenter une stratégie de rendu optimisée pour le SEO

---

## Outils nécessaires
- Serveur local (XAMPP, WAMP, ou environnement en ligne)
- Éditeur de code (VS Code)
- Google PageSpeed Insights / Lighthouse
- Schema Markup Validator (Google)
- Screaming Frog (ou équivalent)

---

## Exercice 1 — Analyse de Performance Initiale (20 min)

**Consigne :** Avant toute optimisation, mesurez l'état initial du site.

**PageSpeed Insights :**
| Métrique | Valeur initiale | Objectif | Statut |
|----------|-----------------|----------|--------|
| LCP | | ≤ 2.5s | |
| INP | | ≤ 200ms | |
| CLS | | ≤ 0.1 | |
| FCP | | ≤ 1.8s | |
| TTFB | | ≤ 0.8s | |
| Score Mobile | | ≥ 90 | |
| Score Desktop | | ≥ 90 | |

**Lighthouse (audit complet) :**
| Catégorie | Score | Problèmes principaux |
|-----------|-------|---------------------|
| Performance | | |
| Accessibilité | | |
| Best Practices | | |
| SEO | | |
| PWA | | |

**Capture d'écran avant optimisation :** Prenez une capture de l'écran PageSpeed Insights.

---

## Exercice 2 — Optimisation des Images (30 min)

**Consigne :** Optimisez toutes les images du site.

**Inventaire des images :**
| Image | Format | Taille (Ko) | Dimensions | Alt text | Action |
|-------|--------|-------------|------------|----------|--------|
| | | | | | |
| | | | | | |

**Actions à réaliser :**
1. **Conversion en format moderne :** PNG/JPG → WebP ou AVIF
2. **Compression :** Utilisez Squoosh, TinyPNG ou ImageOptim
3. **Redimensionnement :** Ajustez aux dimensions d'affichage réelles
4. **Lazy loading :** Ajoutez `loading="lazy"` sur les images hors écran
5. **Responsive images :** Utilisez `srcset` et `sizes` pour les écrans Retina
6. **Alt text :** Ajoutez des descriptions pertinentes pour chaque image

**Code à générer :**
```html
<!-- Exemple d'image responsive optimisée -->
<img 
  src="image-800w.webp"
  srcset="image-400w.webp 400w, image-800w.webp 800w, image-1200w.webp 1200w"
  sizes="(max-width: 600px) 400px, (max-width: 1200px) 800px, 1200px"
  loading="lazy"
  alt="Description SEO de l'image"
  width="800"
  height="600"
  decoding="async"
>
```

---

## Exercice 3 — Optimisation du CSS et JavaScript (35 min)

**Consigne :** Optimisez le rendu du CSS et du JS.

**1. Critical CSS :**
Identifiez le CSS nécessaire au rendu initial ("above the fold") :
```html
<!-- Critical CSS en inline dans le <head> -->
<style>
  /* Styles critiques pour le rendu initial */
  body { font-family: ... }
  header { ... }
  .hero { ... }
</style>
<!-- Chargement différé du CSS complet -->
<link rel="preload" href="styles.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
<noscript><link rel="stylesheet" href="styles.css"></noscript>
```

**2. Minification :**
- CSS : Utilisez Clean-CSS ou cssnano
- JS : Utilisez Terser ou UglifyJS
- HTML : Utilisez html-minifier

**3. Code Splitting :**
```javascript
// Exemple : chargement dynamique des modules JS
import('heavy-module.js').then(module => {
  module.init();
});
```

**4. Suppression du render-blocking :**
- Déplacez les scripts non critiques en bas du `<body>`
- Ajoutez `async` ou `defer` sur les scripts
  ```html
  <script src="analytics.js" async></script>
  <script src="app.js" defer></script>
  ```

---

## Exercice 4 — Optimisation du Serveur (25 min)

**Consigne :** Configurez le serveur pour de meilleures performances.

**1. Cache navigateur (fichier .htaccess pour Apache ou configuration Nginx) :**
```
# Apache .htaccess
<IfModule mod_expires.c>
  ExpiresActive On
  ExpiresByType image/webp "access plus 1 year"
  ExpiresByType image/avif "access plus 1 year"
  ExpiresByType text/css "access plus 1 month"
  ExpiresByType application/javascript "access plus 1 month"
  ExpiresByType text/html "access plus 0 seconds"
</IfModule>
```

**2. Compression Brotli / Gzip :**
```
# Apache
AddOutputFilterByType BROTLI_COMPRESS text/html text/css application/javascript
AddOutputFilterByType DEFLATE text/html text/css application/javascript
```

**3. Headers de cache et sécurité :**
```apache
<IfModule mod_headers.c>
  Header set X-Content-Type-Options "nosniff"
  Header set X-Frame-Options "SAMEORIGIN"
  Header set Referrer-Policy "strict-origin-when-cross-origin"
  # Cache-Control pour les ressources statiques
  Header set Cache-Control "public, max-age=31536000, immutable" "exprès:image/*"
</IfModule>
```

**Questions :**
1. Quelle est la différence entre Gzip et Brotli ?
2. Pourquoi les ressources statiques doivent-elles avoir un cache long ?
3. Qu'est-ce que l'ETag et à quoi sert-il ?

---

## Exercice 5 — Mise en place des Données Structurées (35 min)

**Consigne :** Implémentez les données structurées JSON-LD sur le site.

**1. Organisation :**
```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Nom de l'entreprise",
  "url": "https://exemple.com",
  "logo": "https://exemple.com/logo.png",
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+33-1-23-45-67-89",
    "contactType": "customer service"
  },
  "sameAs": [
    "https://www.facebook.com/entreprise",
    "https://www.linkedin.com/company/entreprise"
  ]
}
```

**2. Article / BlogPost :**
Implémentez les données structurées pour un article :
```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Titre de l'article",
  "description": "Description de l'article",
  "author": {
    "@type": "Person",
    "name": "Nom de l'auteur"
  },
  "datePublished": "2026-01-15",
  "dateModified": "2026-01-20",
  "image": "https://exemple.com/image.jpg",
  "publisher": {
    "@type": "Organization",
    "name": "Nom du site",
    "logo": {
      "@type": "ImageObject",
      "url": "https://exemple.com/logo.png"
    }
  }
}
```

**3. BreadcrumbList :**
```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Accueil", "item": "https://exemple.com" },
    { "@type": "ListItem", "position": 2, "name": "Blog", "item": "https://exemple.com/blog" },
    { "@type": "ListItem", "position": 3, "name": "Article SEO", "item": "https://exemple.com/blog/article-seo" }
  ]
}
```

**4. FAQPage :**
```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Qu'est-ce que le SEO ?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Le SEO (Search Engine Optimization) est l'ensemble des techniques..."
      }
    }
  ]
}
```

**Validation :** Testez chaque implémentation avec le [Schema Markup Validator](https://validator.schema.org/) de Google.

---

## Exercice 6 — Configuration Technique du Site (30 min)

**Consigne :** Mettez en place les fichiers techniques essentiels.

**1. Robots.txt :**
```txt
User-agent: *
Disallow: /admin/
Disallow: /private/
Allow: /admin/public/

Sitemap: https://exemple.com/sitemap.xml
```

**À faire :**
- Testez le robots.txt via Google Search Console
- Vérifiez que les pages importantes ne sont pas bloquées

**2. Sitemap XML :**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://exemple.com/</loc>
    <lastmod>2026-01-15</lastmod>
    <changefreq>weekly</changefreq>
    <priority>1.0</priority>
  </url>
  <!-- Répéter pour chaque page -->
</urlset>
```

**À faire :**
- Générez le sitemap dynamiquement ou avec un outil
- Soumettez-le via Google Search Console
- Vérifiez qu'il ne contient pas d'URLs bloquées par robots.txt

**3. Fichier .htaccess (redirections 301) :**
```apache
# Redirection des URLs www vers non-www (ou inverse)
RewriteCond %{HTTP_HOST} ^www\.exemple\.com [NC]
RewriteRule ^(.*)$ https://exemple.com/$1 [L,R=301]

# Redirection HTTP vers HTTPS
RewriteCond %{HTTPS} off
RewriteRule ^(.*)$ https://%{HTTP_HOST}/$1 [L,R=301]
```

---

## Exercice 7 — Optimisation Mobile (20 min)

**Consigne :** Assurez la compatibilité mobile du site.

**Checklist Mobile-First :**
- [ ] Viewport meta tag présent : `<meta name="viewport" content="width=device-width, initial-scale=1">`
- [ ] Police de caractères ≥ 16px pour le texte
- [ ] Éléments cliquables ≥ 48x48px
- [ ] Pas de contenu horizontal (scroll horizontal)
- [ ] Images responsives (srcset)
- [ ] Pas de popups intrusifs (interstitiels)
- [ ] Test Mobile-Friendly Google réussi
- [ ] Temps de chargement mobile < 3s

**Test :**
1. Utilisez l'outil Mobile-Friendly Test de Google
2. Testez la navigation mobile sur 5 pages
3. Capturez les problèmes d'affichage
4. Corrigez les problèmes identifiés

---

## Exercice 8 — Test Final et Comparaison (20 min)

**Consigne :** Après toutes les optimisations, re-mesurez les performances.

**Comparatif avant/après :**

| Métrique | Avant | Après | Amélioration |
|----------|-------|-------|--------------|
| LCP | | | |
| INP | | | |
| CLS | | | |
| Score Mobile | | | |
| Score Desktop | | | |
| Taille page (Ko) | | | |
| Requêtes | | | |
| Temps chargement | | | |

**Rapport final :**
1. Quelles optimisations ont eu le plus d'impact ?
2. Quel est le gain estimé en termes d'expérience utilisateur ?
3. Quel serait l'impact SEO potentiel ?
4. Quelles optimisations reste-t-il à faire (prochain sprint) ?

**Livrable :** Fiche récapitulative des optimisations réalisées avec captures d'écran avant/après.

---

## Rendu final

**À rendre :**
1. Rapport d'optimisation technique (avant/après avec captures d'écran)
2. Fichiers de configuration produits (robots.txt, .htaccess, sitemap.xml)
3. Code des données structurées JSON-LD
4. Résultat PageSpeed Insights avant vs après

**Barème :**
- Analyse initiale : /5
- Optimisation images et ressources : /10
- Optimisation serveur et cache : /10
- Données structurées : /10
- Configuration technique : /10
- Résultat final (amélioration mesurable) : /5
- Total : /50
