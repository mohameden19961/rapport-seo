import '../models/course_models.dart';

// Part 4: Le SEO Off-Page -- Autorite et Netlinking (Ch 20-23)
final List<Chapter> part4Chapters = [
  Chapter(
    number: 20,
    title: 'Le Netlinking et les Backlinks',
    icon: '1F517',
    partTitle: 'Le SEO Off-Page \u2014 Autorite et Netlinking',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre l'importance des backlinks pour le SEO"),
      CourseContent.text("Evaluer la qualite d'un backlink"),
      CourseContent.text("Analyser le profil de liens d'un site"),
    ],
    sections: [
      Section(title: 'Les fondamentaux du netlinking', contents: [
        CourseContent.text("Le netlinking est l'ensemble des techniques visant a obtenir des liens hypertextes depuis d'autres sites web vers votre site. Les backlinks restent un des trois facteurs de classement les plus importants de Google."),
        CourseContent.text("Le PageRank original etait base sur l'idee qu'un lien est un vote de confiance. Plus vous avez de votes de qualite, plus votre site est considere comme une autorite."),
        CourseContent.bullet("Quantite vs Qualite : un backlink depuis un site d'autorite vaut des centaines de backlinks de faible qualite"),
        CourseContent.bullet("Pertinence thematique : un lien depuis un site du meme secteur a plus de valeur"),
        CourseContent.bullet("Naturel vs Artificiel : les profils de liens naturels sont diversifies et progressifs"),
      ]),
      Section(title: 'Analyse de la qualite des backlinks', contents: [
        CourseContent.text("Plusieurs criteres permettent d'evaluer la qualite d'un lien :"),
        CourseContent.bullet("Autorite du domaine source (Domain Rating, Trust Flow)"),
        CourseContent.bullet("Pertinence thematique entre les deux sites"),
        CourseContent.bullet("Position du lien dans la page (contenu principal > footer > sidebar)"),
        CourseContent.bullet("Texte d'ancrage (anchor text) naturel et varie"),
        CourseContent.important("Un profil de liens toxiques peut declencher une penalite de Google."),
      ]),
    ],
    takeaways: [
      CourseContent.text("Les backlinks restent un facteur de classement majeur"),
      CourseContent.text("La qualite et la pertinence des liens sont plus importantes que la quantite"),
      CourseContent.text("Un profil de liens naturel et diversifie est essentiel"),
    ],
    exercises: [
      CourseContent.text("Analysez le profil de backlinks d'un concurrent avec Ahrefs ou SEMrush."),
      CourseContent.text("Creez une grille d'evaluation de la qualite des backlinks."),
    ],
  ),
  Chapter(
    number: 21,
    title: 'Les strategies avancees de Link Building',
    icon: '1F3D7',
    partTitle: 'Le SEO Off-Page \u2014 Autorite et Netlinking',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Maitriser les techniques avancees de link building"),
      CourseContent.text("Developper une strategie de netlinking durable"),
      CourseContent.text("Eviter les penalites"),
    ],
    sections: [
      Section(title: 'Strategies white-hat', contents: [
        CourseContent.text("Les strategies white-hat respectent les guidelines de Google :"),
        CourseContent.heading('Creation de contenu attractif'),
        CourseContent.bullet("Guides complets et ressources uniques"),
        CourseContent.bullet("Etudes originales et donnees exclusives"),
        CourseContent.bullet("Infographies et outils gratuits"),
        CourseContent.heading('Digital PR'),
        CourseContent.bullet("Relations avec les journalistes et blogueurs"),
        CourseContent.bullet("Guest blogging sur des sites d'autorite"),
        CourseContent.bullet("Participation a des etudes collaboratives"),
        CourseContent.heading('Techniques specifiques'),
        CourseContent.bullet("Broken link building : proposer un remplacement pour les liens brises"),
        CourseContent.bullet("Skyscraper technique : creer un contenu meilleur que ce qui existe"),
        CourseContent.bullet("Unlinked mentions : transformer les mentions sans lien en backlinks"),
        CourseContent.important("Evitez absolument : achat de liens, PBN, echanges massifs."),
      ]),
    ],
    takeaways: [
      CourseContent.text("Le link building white-hat repose sur la creation de valeur"),
      CourseContent.text("Le Digital PR est essentiel pour les strategies modernes"),
      CourseContent.text("Les pratiques manipulatrices comportent des risques eleves de penalite"),
    ],
    exercises: [
      CourseContent.text("Mettez en place une campagne de broken link building."),
      CourseContent.text("Developpez une strategie de Digital PR pour votre secteur."),
    ],
  ),
  Chapter(
    number: 22,
    title: "E-E-A-T : Experience, Expertise, Autorite, Confiance",
    icon: '1F3C6',
    partTitle: 'Le SEO Off-Page \u2014 Autorite et Netlinking',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre le cadre E-E-A-T de Google"),
      CourseContent.text("Developper l'expertise et l'autorite de votre site"),
      CourseContent.text("Appliquer E-E-A-T aux strategies SEO"),
    ],
    sections: [
      Section(title: "Les composants d'E-E-A-T", contents: [
        CourseContent.text("E-E-A-T est le cadre d'evaluation de la qualite utilise par les Quality Raters de Google."),
        CourseContent.bullet("Experience : l'experience pratique et directe sur le sujet"),
        CourseContent.bullet("Expertise : la connaissance approfondie verifiable"),
        CourseContent.bullet("Authoritativeness : la reconnaissance par les pairs"),
        CourseContent.bullet("Trustworthiness : la fiabilite et la transparence"),
        CourseContent.text("Google a ajoute le premier E (Experience) en decembre 2022, notamment pour les sujets YMYL."),
      ]),
      Section(title: "Comment ameliorer l'E-E-A-T", contents: [
        CourseContent.heading('Sur le site'),
        CourseContent.bullet("Afficher les auteurs avec biographie et qualifications"),
        CourseContent.bullet("Citer des sources fiables et verifiables"),
        CourseContent.bullet("Page A propos detaillee, contact, politique de confidentialite"),
        CourseContent.heading('Hors du site'),
        CourseContent.bullet("Mentions sur des sites d'autorite"),
        CourseContent.bullet("Publications et interventions publiques"),
        CourseContent.bullet("Avis clients authentiques"),
        CourseContent.important("Pour les sites YMYL (sante, finance, droit), l'E-E-A-T est particulierement important."),
      ]),
    ],
    takeaways: [
      CourseContent.text("E-E-A-T est le cadre des Quality Raters de Google"),
      CourseContent.text("L'experience personnelle a ete ajoutee comme composante en 2022"),
      CourseContent.text("Les sites YMYL sont particulierement sensibles a l'E-E-A-T"),
    ],
    exercises: [
      CourseContent.text("Auditez l'E-E-A-T d'un site de votre secteur."),
      CourseContent.text("Creez un plan d'amelioration E-E-A-T pour un site YMYL."),
    ],
  ),
  Chapter(
    number: 23,
    title: 'Strategie de contenu et Content Marketing SEO',
    icon: '1F4DD',
    partTitle: 'Le SEO Off-Page \u2014 Autorite et Netlinking',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre la strategie de content marketing SEO"),
      CourseContent.text("Creer un calendrier editorial optimise"),
      CourseContent.text("Mesurer l'impact du contenu sur le referencement"),
    ],
    sections: [
      Section(title: 'Strategie de contenu SEO', contents: [
        CourseContent.text("Le content marketing SEO combine creation de contenu de valeur et optimisation pour les moteurs de recherche."),
        CourseContent.bullet("Definir des objectifs clairs (trafic, leads, notoriete)"),
        CourseContent.bullet("Identifier les personas et leurs besoins"),
        CourseContent.bullet("Cartographier le parcours client et les intentions de recherche"),
        CourseContent.bullet("Produire un contenu de qualite repondant aux criteres E-E-A-T"),
        CourseContent.text("La regularite est cle : un blog publiant 2-3 articles/mois voit des resultats apres 6-12 mois."),
      ]),
      Section(title: 'Types de contenu', contents: [
        CourseContent.text("Diversifier les formats pour elargir l'audience :"),
        CourseContent.bullet("Articles de blog et guides approfondis"),
        CourseContent.bullet("Videos tutoriels et webinaires"),
        CourseContent.bullet("Infographies et livres blancs"),
        CourseContent.bullet("Podcasts et newsletters"),
        CourseContent.note("Le repurposing est efficace : un guide devient video, podcast, infographie."),
      ]),
    ],
    takeaways: [
      CourseContent.text("Le content marketing SEO integre SEO et marketing de contenu"),
      CourseContent.text("La regularite de publication est aussi importante que la qualite"),
      CourseContent.text("Le repurposing maximise le ROI de chaque contenu"),
    ],
    exercises: [
      CourseContent.text("Creez un calendrier editorial trimestriel SEO."),
      CourseContent.text("Developpez une strategie de repurposing pour un contenu long-form."),
    ],
  ),
];
