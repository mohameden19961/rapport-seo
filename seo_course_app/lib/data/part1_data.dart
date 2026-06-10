import '../models/course_models.dart';

final List<Chapter> part1Chapters = [
  Chapter(
    number: 1,
    title: 'Histoire et evolution des moteurs de recherche',
    icon: '1E30C',
    partTitle: 'Les Fondamentaux des Moteurs de Recherche',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre l'evolution historique des moteurs de recherche"),
      CourseContent.text('Identifier les grandes etapes technologiques'),
      CourseContent.text("Analyser l'impact de l'IA sur la recherche"),
    ],
    sections: [
      Section(title: 'Introduction', contents: [
        CourseContent.text("L'histoire du referencement commence bien avant Google. Depuis les premiers annuaires web comme Yahoo! et AltaVista jusqu'aux moteurs modernes propulses par l'intelligence artificielle, chaque etape a profondement transforme la maniere dont l'information est organisee et retrouvee sur le web."),
        CourseContent.text('Comprendre cette evolution est essentiel pour tout professionnel du SEO car elle permet d anticiper les changements futurs et d adopter une strategie de referencement durable.'),
      ]),
      Section(title: 'Les precurseurs (1990-1997)', contents: [
        CourseContent.heading('Archie, Gopher, Veronica'),
        CourseContent.text("Le premier outil d'indexation, Archie (1990), etait un index des fichiers FTP. Il ne permettait pas une recherche par mots-cles mais simplement la localisation de fichiers. Veronica (1992) a etendu ce concept au protocole Gopher, tandis que Wandex (1993) a propose le premier crawler."),
        CourseContent.heading('Les premiers moteurs web'),
        CourseContent.text('WebCrawler (1994) fut le premier moteur a indexer le texte integral des pages. Lycos, AltaVista et Excite ont suivi, introduisant des innovations comme l indexation du contenu complet des pages et les premieres tentatives d analyse de pertinence basees sur le contenu textuel.'),
        CourseContent.heading('Yahoo! et les annuaires'),
        CourseContent.text("Yahoo! a commence comme un annuaire edite manuellement par David Filo et Jerry Yang en 1994. Bien qu efficace pour un petit web, cette approche ne pouvait pas passer a l echelle face a la croissance exponentielle du nombre de sites."),
      ]),
      Section(title: "L'ere Google (1998-2010)", contents: [
        CourseContent.text("Larry Page et Sergey Brin ont introduit PageRank en 1998, un algorithme qui evaluait la pertinence d'une page non pas sur son contenu seul mais sur la quantite et la qualite des liens pointant vers elle. Cette innovation a revolutionne la recherche web."),
        CourseContent.bullet("Introduction de PageRank : analyse du web comme un graphe de liens"),
        CourseContent.bullet("Mises a jour majeures : Florida (2003), BigDaddy (2005), Caffeine (2010)"),
        CourseContent.bullet("Evolution vers la recherche personnalisee et locale (2005-2009)"),
        CourseContent.bullet('Universal Search (2007) : integration des images, videos, actualites'),
        CourseContent.text("La mise a jour Caffeine (2010) a completement rearchitecture l'infrastructure d'indexation de Google, passant d'un systeme par lots a un traitement en temps reel permettant d'indexer les contenus quelques minutes apres leur publication."),
      ]),
      Section(title: "L'ere de l'IA (2011-present)", contents: [
        CourseContent.text("A partir de 2011 avec Panda, Google a progressivement integre des techniques d'intelligence artificielle dans son algorithme. Hummingbird (2013) a marque un tournant avec le passage d'une approche par mots-cles a une comprehension semantique des requetes."),
        CourseContent.bullet("RankBrain (2015) : premier systeme d'IA pour le traitement des requetes"),
        CourseContent.bullet("BERT (2019) : comprehension du contexte et des nuances linguistiques"),
        CourseContent.bullet("MUM (2021) : modele multimodal comprenant texte, images, videos"),
        CourseContent.bullet("SGE / AI Overviews (2023-2024) : generation de reponses par IA"),
        CourseContent.text("L'avenement des LLM comme GPT-4, Gemini et Claude redefinit la recherche. Les AI Overviews de Google generent des reponses directement dans les SERP, modifiant fondamentalement le comportement des utilisateurs et les strategies SEO."),
      ]),
      Section(title: 'Le paysage concurrentiel', contents: [
        CourseContent.text("Bien que Google domine avec plus de 90% des parts de marche en Europe, d'autres moteurs occupent des niches specifiques : Bing (Microsoft) avec son integration d'OpenAI, DuckDuckGo pour la confidentialite, et des moteurs specialises comme Shodan (IoT) ou Wolfram Alpha (donnees computationnelles)."),
        CourseContent.important("La diversification des moteurs de recherche et l'emergence de l'IA conversationnelle imposent une strategie SEO multi-plateforme."),
      ]),
    ],
    takeaways: [
      CourseContent.text('Le SEO est ne avec l evolution des moteurs de recherche, chaque mise a jour algorithmique a redefini les bonnes pratiques'),
      CourseContent.text('PageRank a revolutionne la recherche en utilisant la structure des liens comme signal de pertinence'),
      CourseContent.text("L'IA transforme profondement la recherche : du keyword matching a la comprehension semantique"),
      CourseContent.text("L'histoire du SEO montre que les pratiques durables (contenu de qualite, technique solide) survivent aux mises a jour"),
    ],
    exercises: [
      CourseContent.text("Creez une frise chronologique interactive des principales mises a jour Google de 2000 a 2025 en expliquant l'impact SEO de chacune."),
      CourseContent.text("Analysez comment l'IA generative (ChatGPT, Gemini, Claude, Perplexity) change les habitudes de recherche et quelles implications cela a pour le SEO."),
    ],
  ),
  Chapter(
    number: 2,
    title: 'Fonctionnement technique des moteurs de recherche',
    icon: '2699',
    partTitle: 'Les Fondamentaux des Moteurs de Recherche',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre l'architecture technique des moteurs de recherche"),
      CourseContent.text('Maitriser le processus crawling, indexation, ranking'),
      CourseContent.text("Analyser les facteurs de classement et leur evolution"),
    ],
    sections: [
      Section(title: "Architecture d'un moteur de recherche", contents: [
        CourseContent.text("Un moteur de recherche moderne repose sur trois composants fondamentaux interconnectes : le crawler (robot d'exploration), l'indexeur (base de donnees inversee), et le ranker (algorithme de classement). Chaque composant joue un role crucial dans la chaine de traitement."),
        CourseContent.text("Le crawl explore le web en suivant les liens hypertextes. L'indexation organise et stocke les informations collectees. Le ranking determine l'ordre d'affichage des resultats en fonction de la pertinence percue."),
      ]),
      Section(title: 'Le crawling en detail', contents: [
        CourseContent.text("Le crawling est le processus par lequel les moteurs de recherche decouvrent de nouvelles pages et mettent a jour les pages existantes. Googlebot utilise un algorithme de parcours de graphe pour naviguer systematiquement a travers le web."),
        CourseContent.bullet("File d'attente prioritaire : les pages frequemment mises a jour sont crawlees plus souvent"),
        CourseContent.bullet("Politique de politesse : respect du crawl-delay et des limites de bande passante"),
        CourseContent.bullet("Decouverte via les sitemaps, les backlinks, les flux RSS"),
        CourseContent.bullet("Gestion des ressources : budget de crawl alloue a chaque site"),
        CourseContent.note("Le crawling n'est pas garanti. Googlebot peut decider de ne pas crawler une page si elle est jugee non prioritaire ou si le site a des problemes techniques."),
      ]),
      Section(title: "L'indexation", contents: [
        CourseContent.text("L'indexation transforme les pages crawlees en une structure de donnees optimisee pour la recherche. Le moteur analyse le contenu textuel, les balises HTML, les metadonnees et les signaux de qualite pour creer une representation semantique de chaque page."),
        CourseContent.text("L'index inverse est la structure de donnees fondamentale qui permet aux moteurs de recherche de repondre aux requetes en quelques millisecondes. Chaque mot est associe a la liste des documents qui le contiennent, avec des informations de position et de frequence."),
        CourseContent.important("Une page non indexee est invisible pour les utilisateurs des moteurs de recherche. L'indexation est donc la condition sine qua non du referencement."),
      ]),
      Section(title: 'Le ranking et les algorithmes', contents: [
        CourseContent.text("Le classement des resultats repose sur des centaines de signaux combines par des algorithmes d'apprentissage automatique. Google utilise un systeme de scoring multi-criteres qui evalue a la fois la pertinence thematique et la qualite percue."),
        CourseContent.bullet("Pertinence semantique : correspondance entre la requete et le contenu"),
        CourseContent.bullet("Autorite : signaux de qualite comme les backlinks et l'E-E-A-T"),
        CourseContent.bullet("Experience utilisateur : Core Web Vitals, mobile-friendliness"),
        CourseContent.bullet("Fracheur : actualite et mise a jour du contenu"),
        CourseContent.bullet("Personnalisation : historique de recherche, localisation, preferences"),
        CourseContent.text("Les algorithmes modernes utilisent des reseaux de neurones profonds pour comprendre l'intention derriere les requetes. Le modele BERT (2019) a apporte une comprehension contextuelle bidirectionnelle, tandis que MUM (2021) peut raisonner sur des contenus multimodaux."),
      ]),
      Section(title: 'Les SERP modernes', contents: [
        CourseContent.text("Les pages de resultats ont considerablement evolue. Au-dela des 10 liens bleus classiques, les SERP modernes incluent des featured snippets, des knowledge panels, des carrousels d'images, des videos, des actualites, des questions-reponses, et desormais des AI Overviews generes par l'IA."),
        CourseContent.text("Cette evolution a un impact direct sur les taux de clics (CTR). Les featured snippets captent une part importante du trafic, tandis que les AI Overviews peuvent reduire significativement le nombre de clics vers les sites web, un phenomene appele zero-click search."),
      ]),
    ],
    takeaways: [
      CourseContent.text("Le crawl, l'indexation et le ranking sont les trois piliers du fonctionnement des moteurs de recherche"),
      CourseContent.text("L'index inverse permet des recherches en quelques millisecondes sur des milliards de pages"),
      CourseContent.text("Les algorithmes de ranking utilisent des centaines de signaux combines par des modeles d'IA"),
      CourseContent.text("Les SERP modernes sont de plus en plus riches et reduisent l'espace pour les resultats organiques traditionnels"),
    ],
    exercises: [
      CourseContent.text("Configurez un crawler simple avec Scrapy ou une bibliotheque equivalente pour analyser la structure d'un site web de votre choix."),
      CourseContent.text("Analysez les SERP pour 5 requetes differentes de votre secteur et identifiez tous les types de resultats presents (featured snippets, knowledge panels, AI Overviews, etc.)."),
    ],
  ),
  Chapter(
    number: 3,
    title: "Les moteurs de recherche modernes et l'intelligence artificielle",
    icon: '1F916',
    partTitle: 'Les Fondamentaux des Moteurs de Recherche',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre l'integration de l'IA dans les moteurs de recherche"),
      CourseContent.text("Analyser l'impact des LLM sur le SEO"),
      CourseContent.text('Identifier les opportunites et defis du Search Generative Experience'),
    ],
    sections: [
      Section(title: "L'IA dans les moteurs de recherche", contents: [
        CourseContent.text("L'intelligence artificielle est devenue le c ur des moteurs de recherche modernes. Google utilise l'IA a chaque etape du processus : du crawling intelligent (qui predit quelles pages crawler) a la generation de reponses (AI Overviews), en passant par la comprehension des requetes et le classement des resultats."),
        CourseContent.bullet("RankBrain (2015) : traitement des requetes jamais vues par similarite vectorielle"),
        CourseContent.bullet("Neural Matching (2018) : comprehension des relations conceptuelles entre requetes et contenus"),
        CourseContent.bullet("BERT (2019) : analyse contextuelle bidirectionnelle des phrases"),
        CourseContent.bullet("MUM (2021) : modele multimodal capable de comprendre texte, images, videos et audio"),
        CourseContent.bullet("Gemini (2024) : modele natif multimodal integre a l'ecosysteme Google"),
      ]),
      Section(title: 'Le Search Generative Experience (SGE)', contents: [
        CourseContent.text("Le SGE, rebaptise AI Overviews, represente le changement le plus important depuis l'introduction de PageRank. Au lieu d'afficher des liens, Google genere des reponses completes directement dans les SERP en synthetisant l'information provenant de multiples sources."),
        CourseContent.bullet("Generation de reponses contextuelles avec citations des sources"),
        CourseContent.bullet("Affichage des produits pertinents dans les requetes commerciales"),
        CourseContent.bullet("Suggestions de questions complementaires pour approfondir"),
        CourseContent.bullet("Impact potentiel significatif sur le trafic des sites web"),
        CourseContent.text("Pour les professionnels du SEO, l'enjeu est desormais d'optimiser pour etre cite comme source dans les AI Overviews plutot que de simplement viser la premiere position organique."),
      ]),
      Section(title: 'Les LLM et la recherche conversationnelle', contents: [
        CourseContent.text("Les modeles de langage comme GPT-4, Claude, Gemini, Perplexity AI et d'autres modifient la facon dont les utilisateurs accedent a l'information. La recherche conversationnelle permet des echanges complexes avec suivi du contexte, remettant en cause le paradigme traditionnel de la recherche par mots-cles."),
        CourseContent.text("Ces plateformes utilisent le Retrieval-Augmented Generation (RAG) pour combiner la generation de texte avec la recherche d'informations actualisees, creant un pont entre les moteurs de recherche traditionnels et l'IA generative."),
      ]),
      Section(title: "Strategies SEO pour l'ere de l'IA", contents: [
        CourseContent.text("L'emergence de l'IA dans la recherche necessite une evolution des strategies SEO. Le contenu doit etre optimise non seulement pour les moteurs de recherche traditionnels mais aussi pour l'extraction par les LLM et l'affichage dans les AI Overviews."),
        CourseContent.heading('Principes cles'),
        CourseContent.bullet("Creer un contenu original apportant une reelle valeur ajoutee (E-E-A-T)"),
        CourseContent.bullet("Structurer l'information pour l'extraction automatique (donnees structurees, Q&A)"),
        CourseContent.bullet("Developper une autorite thematique reconnue (Entity SEO)"),
        CourseContent.bullet("Optimiser la visibilite dans les sources citees par l'IA generative"),
        CourseContent.bullet("Utiliser l'IA comme assistant de production tout en gardant un controle humain"),
        CourseContent.important("Dans un monde de recherche par IA, l'autorite et l'expertise reconnues deviennent plus importantes que jamais. L'E-E-A-T n'est plus optionnel."),
      ]),
    ],
    takeaways: [
      CourseContent.text("L'IA est integree a tous les niveaux des moteurs de recherche modernes, du crawl au ranking"),
      CourseContent.text("Les AI Overviews transforment fondamentalement l'experience de recherche et le comportement des utilisateurs"),
      CourseContent.text("Le contenu doit etre optimise pour l'extraction par l'IA tout en restant pertinent pour les humains"),
      CourseContent.text("Les LLM et la recherche conversationnelle creent de nouveaux canaux de visibilite a integrer dans une strategie SEO"),
    ],
    exercises: [
      CourseContent.text("Testez l'AI Overview de Google sur 10 requetes de votre secteur et analysez les sources citees. Proposez une strategie pour apparaitre dans ces sources."),
      CourseContent.text("Comparez les reponses de ChatGPT, Gemini, Claude et Perplexity IA sur une meme question complexe liee a votre domaine d'activite."),
    ],
  ),
];
