import '../models/course_models.dart';

// Part 7: La Strategie et les Tendances du SEO (Ch 34-37)
final List<Chapter> part7Chapters = [
  Chapter(
    number: 34,
    title: "L'Audit SEO Complet",
    icon: '1F52C',
    partTitle: 'La Strategie et les Tendances du SEO',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Maitriser la methodologie d'audit SEO"),
      CourseContent.text("Structurer un rapport d'audit professionnel"),
      CourseContent.text("Prioriser les recommandations SEO"),
    ],
    sections: [
      Section(title: "Methodologie d'audit", contents: [
        CourseContent.text("Un audit SEO analyse systematiquement tous les facteurs affectant la visibilite d'un site."),
        CourseContent.numbered("Phase 1 : Audit technique (crawl, indexation, performance, mobile)"),
        CourseContent.numbered("Phase 2 : Audit on-page (contenu, balises, donnees structurees)"),
        CourseContent.numbered("Phase 3 : Audit off-page (backlinks, autorite, E-E-A-T)"),
        CourseContent.numbered("Phase 4 : Audit concurrentiel"),
        CourseContent.numbered("Phase 5 : Analyse des donnees (trafic, conversions)"),
        CourseContent.numbered("Phase 6 : Recommandations et roadmap"),
      ]),
      Section(title: 'Priorisation', contents: [
        CourseContent.text("Utilisez la matrice impact/effort pour prioriser :"),
        CourseContent.bullet("Impact fort, effort faible : quick wins prioritaires"),
        CourseContent.bullet("Impact fort, effort fort : planification moyen terme"),
        CourseContent.bullet("Impact faible, effort faible : a faire quand possible"),
        CourseContent.bullet("Impact faible, effort fort : a reconsiderer"),
      ]),
    ],
    takeaways: [
      CourseContent.text("Un audit SEO complet couvre technique, on-page, off-page"),
      CourseContent.text("La matrice impact/effort guide la priorisation"),
      CourseContent.text("La roadmap doit etre realiste et alignee sur les ressources"),
    ],
    exercises: [
      CourseContent.text("Realisez un audit SEO complet pour un site."),
      CourseContent.text("Creez un plan d'action priorise avec KPI."),
    ],
  ),
  Chapter(
    number: 35,
    title: 'Le Plan d\'Action Strategique',
    icon: '1F3AF',
    partTitle: 'La Strategie et les Tendances du SEO',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Construire un plan d'action SEO strategique"),
      CourseContent.text("Aligner le SEO avec les objectifs business"),
      CourseContent.text("Gerer un projet SEO de A a Z"),
    ],
    sections: [
      Section(title: 'Du diagnostic au plan d\'action', contents: [
        CourseContent.text("Un plan d'action SEO traduit les recommandations en actions concretes avec des jalons mesurables."),
        CourseContent.bullet("Objectifs SMART : Specifiques, Mesurables, Atteignables, Realistes, Temporels"),
        CourseContent.bullet("Roadmap trimestrielle avec phases et livrables"),
        CourseContent.bullet("Budget : temps interne, outils, ressources externes"),
        CourseContent.bullet("KPI de suivi pour chaque action"),
        CourseContent.text("Un plan SEO type se decompose en :"),
        CourseContent.numbered("Quick wins (1-30 jours) : corrections urgentes"),
        CourseContent.numbered("Moyen terme (1-3 mois) : optimisations structurelles"),
        CourseContent.numbered("Long terme (3-12 mois) : contenu, autorite, strategie"),
      ]),
      Section(title: 'Reporting et communication', contents: [
        CourseContent.text("La communication des resultats SEO est essentielle :"),
        CourseContent.bullet("Reporting mensuel adapte a l'audience (direction, marketing, technique)"),
        CourseContent.bullet("Mettre en avant le business impact (trafic, leads, revenus)"),
        CourseContent.bullet("Expliquer les delais : le SEO est un investissement long terme"),
        CourseContent.bullet("Celebrer les victoires et apprendre des echecs"),
      ]),
    ],
    takeaways: [
      CourseContent.text("Un plan d'action SEO doit etre SMART et aligne sur le business"),
      CourseContent.text("La communication reguliere est essentielle pour l'engagement"),
      CourseContent.text("Le SEO est un investissement long terme qui demande de la patience"),
    ],
    exercises: [
      CourseContent.text("Creez un plan d'action SEO sur 12 mois pour un site."),
      CourseContent.text("Preparez un reporting mensuel type pour la direction."),
    ],
  ),
  Chapter(
    number: 36,
    title: 'SEO et Intelligence Artificielle',
    icon: '1F916',
    partTitle: 'La Strategie et les Tendances du SEO',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre l'impact de l'IA sur le SEO"),
      CourseContent.text("Utiliser l'IA dans sa strategie SEO"),
      CourseContent.text("Anticiper l'evolution de la recherche avec l'IA"),
    ],
    sections: [
      Section(title: "L'IA dans les moteurs de recherche", contents: [
        CourseContent.text("L'IA est devenue le coeur des moteurs de recherche modernes :"),
        CourseContent.bullet("RankBrain (2015) : traitement vectoriel des requetes"),
        CourseContent.bullet("Neural Matching (2018) : relations conceptuelles"),
        CourseContent.bullet("BERT (2019) : analyse contextuelle bidirectionnelle"),
        CourseContent.bullet("MUM (2021) : modele multimodal"),
        CourseContent.bullet("Gemini (2024) : modele natif multimodal"),
        CourseContent.text("Les AI Overviews (ex-SGE) generent des reponses directement dans les SERP."),
      ]),
      Section(title: 'Strategies SEO pour l\'ere de l\'IA', contents: [
        CourseContent.text("Pour rester visible dans un paysage transforme par l'IA :"),
        CourseContent.bullet("Creer un contenu original apportant une reelle valeur"),
        CourseContent.bullet("Structurer l'information pour l'extraction par l'IA"),
        CourseContent.bullet("Developper l'autorite thematique (Entity SEO)"),
        CourseContent.bullet("Optimiser pour les featured snippets et AI Overviews"),
        CourseContent.bullet("Utiliser l'IA comme assistant de production"),
        CourseContent.important("Google ne penalise pas le contenu IA, mais le contenu de faible qualite."),
      ]),
    ],
    takeaways: [
      CourseContent.text("L'IA est integree a tous les niveaux des moteurs de recherche"),
      CourseContent.text("Les AI Overviews transforment fondamentalement les SERP"),
      CourseContent.text("L'autorite thematique devient plus importante que jamais"),
    ],
    exercises: [
      CourseContent.text("Testez l'AI Overview sur 10 requetes et analysez les sources."),
      CourseContent.text("Comparez les reponses de ChatGPT, Gemini et Perplexity."),
    ],
  ),
  Chapter(
    number: 37,
    title: 'Tendances et Futur du SEO',
    icon: '1F52E',
    partTitle: 'La Strategie et les Tendances du SEO',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Anticiper les tendances futures du SEO"),
      CourseContent.text("Comprendre l'impact des technologies emergentes"),
      CourseContent.text("Preparer une strategie SEO durable"),
    ],
    sections: [
      Section(title: 'Les grandes tendances', contents: [
        CourseContent.text("Le SEO est en constante evolution. Les tendances qui faconnent l'avenir :"),
        CourseContent.bullet("IA et automatisation : l'IA devient le moteur central"),
        CourseContent.bullet("Search Generative Experience : AI Overviews"),
        CourseContent.bullet("Zero-click searches : reponses sans clic"),
        CourseContent.bullet("Recherche vocale et conversationnelle"),
        CourseContent.bullet("E-E-A-T et qualite du contenu"),
        CourseContent.bullet("Core Web Vitals et experience utilisateur"),
      ]),
      Section(title: 'Preparer le futur', contents: [
        CourseContent.text("Pour rester competitif :"),
        CourseContent.bullet("Developper une veritable expertise thematique"),
        CourseContent.bullet("Adopter une approche multi-canal"),
        CourseContent.bullet("Investir dans le contenu de qualite et l'autorite"),
        CourseContent.bullet("Se former en continu"),
        CourseContent.bullet("Optimiser pour l'ere de la recherche sans clic"),
        CourseContent.important("Le futur du SEO n'est pas de lutter contre l'IA mais de l'utiliser comme levier."),
      ]),
    ],
    takeaways: [
      CourseContent.text("L'IA transforme fondamentalement la recherche"),
      CourseContent.text("Les AI Overviews creent de nouvelles opportunites"),
      CourseContent.text("La veille et l'adaptation continue sont essentielles"),
    ],
    exercises: [
      CourseContent.text("Redigez une prospective SEO a 5 ans."),
      CourseContent.text("Creez une strategie d'adaptation aux AI Overviews."),
    ],
  ),
];
