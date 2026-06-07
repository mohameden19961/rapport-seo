# TD 01 — Fondamentaux des Moteurs de Recherche

## Objectifs
- Comprendre l'histoire et l'évolution des moteurs de recherche
- Maîtriser les trois étapes fondamentales (Crawl, Index, Rank)
- Savoir expliquer le fonctionnement du PageRank et des algorithmes IA

---

## Exercice 1 — Chronologie des moteurs de recherche (15 min)

**Consigne :** Classez les événements suivants dans l'ordre chronologique et associez chaque date à l'événement correspondant.

| Année | Événement |
|-------|-----------|
| 1990 | Création de Google par Larry Page et Sergey Brin |
| 1994 | Lancement du PageRank |
| 1996 | Premier moteur de recherche : Archie |
| 1998 | Lancement de Yahoo! Search |
| 2015 | Sortie de RankBrain (IA) |
| 2019 | Lancement de MUM (Multitask Unified Model) |
| 2021 | Sortie de BERT |

**Questions :**
1. Quel était le principal défaut des moteurs de recherche avant Google ?
2. En quoi le PageRank a-t-il révolutionné la recherche web ?
3. Quelle est la différence fondamentale entre RankBrain, BERT et MUM ?

---

## Exercice 2 — Les trois étapes du moteur de recherche (20 min)

**Consigne :** Pour chaque étape ci-dessous, décrivez le processus en 2-3 phrases et donnez un exemple concret.

1. **Crawling** — Comment Google découvre-t-il une nouvelle page web ?
2. **Indexation** — Que se passe-t-il techniquement quand une page est indexée ?
3. **Ranking** — Citez 5 critères de classement et expliquez chacun brièvement.

**Mise en situation :**
Vous publiez un article sur un nouveau site web sans backlinks. En combien de temps peut-il apparaître dans Google ? Quels facteurs accélèrent ou ralentissent ce processus ?

---

## Exercice 3 — Analyse du PageRank (20 min)

**Consigne :** Voici un mini-réseau de pages web. Calculez la répartition théorique du PageRank.

```
Page A → Page B, Page C
Page B → Page C
Page C → Page A
Page D → Page A, Page B, Page C
```

1. Quelle page a le PageRank le plus élevé selon vous ? Justifiez.
2. Si la Page D reçoit 100 liens entrants de qualité, comment évolue le PR des autres pages ?
3. Qu'est-ce qu'un "dangling link" (lien mort) et quel est son impact ?
4. Expliquez le concept de "damping factor" (facteur d'amortissement).

---

## Exercice 4 — L'IA dans les moteurs de recherche (20 min)

| Technologie | Année | Rôle principal | Impact sur le SEO |
|-------------|-------|----------------|-------------------|
| RankBrain | 2015 | | |
| BERT | 2019 | | |
| MUM | 2021 | | |
| Search Generative Experience (SGE) | 2023 | | |

**Questions :**
1. Complétez le tableau ci-dessus.
2. RankBrain traite 15% des requêtes jamais vues. Pourquoi est-ce important pour le SEO ?
3. Comment BERT a-t-il changé la façon de rédiger du contenu SEO ?
4. MUM est multimodal. Quels types de contenu peut-il comprendre ? Quelles sont les implications SEO ?
5. **Discussion :** L'IA va-t-elle remplacer les moteurs de recherche traditionnels ? Pourquoi ?

---

## Exercice 5 — Parts de marché et enjeux (15 min)

**Consigne :** Répondez aux questions suivantes.

1. Quelle est la part de marché de Google en 2025 ? (mondiale et en France)
2. Citez 3 moteurs de recherche alternatifs et leur particularité.
3. Qu'est-ce qu'un "moteur de recherche privé" ? Donnez un exemple.
4. En Chine, quel moteur domine le marché ? Pourquoi ?
5. **Débat :** La domination de Google est-elle une menace pour la neutralité du web ?

---

## Exercice 6 — Crawl, Index, Rank : jeu de rôle (20 min)

**Consigne :** Par groupes de 3, simulez le parcours d'une page web à travers Google.

- **Rôle A (Crawler)** : Décrivez comment vous découvrez la page, suivez les liens, gérez les erreurs.
- **Rôle B (Indexeur)** : Expliquez ce que vous stockez dans l'index, comment vous gérez le contenu dupliqué.
- **Rôle C (Ranker)** : Quels critères utilisez-vous pour classer la page ? Comment l'IA intervient-elle ?

**Production :** Chaque groupe présente son scénario en 3 minutes.

---

## Exercice 7 — Questions Vrai/Faux (10 min)

| # | Affirmation | V/F | Correction |
|---|-------------|-----|------------|
| 1 | Google indexe toutes les pages qu'il crawl | | |
| 2 | Le PageRank est le seul critère de classement de Google | | |
| 3 | BERT comprend le contexte des mots dans une phrase | | |
| 4 | MUM peut analyser des vidéos et des images | | |
| 5 | Un site avec beaucoup de backlinks est toujours bien classé | | |
| 6 | RankBrain utilise l'apprentissage automatique | | |
| 7 | Yahoo! utilise le même index que Google | | |
| 8 | Le crawling consomme des ressources sur le serveur | | |

---

## Pour aller plus loin

- **Recherche :** Comparez les positions des mots-clés "meilleur restaurant Paris" sur Google, Bing et Qwant. Quelles différences observez-vous ?
- **Lecture :** Lisez le chapitre "Histoire et évolution" du rapport et résumez-le en 10 lignes.
- **Veille :** Trouvez un article récent (2025-2026) sur une mise à jour de l'algorithme Google et présentez-le à la classe.
