import '../models/course_models.dart';

// Part 6: La Mesure et l'Analyse (Ch 31-33)
final List<Chapter> part6Chapters = [
  Chapter(
    number: 31,
    title: 'Google Search Console',
    icon: '1F50D',
    partTitle: 'La Mesure et l\'Analyse',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Maitriser Google Search Console"),
      CourseContent.text("Analyser les performances et l'indexation"),
      CourseContent.text("Diagnostiquer et resoudre les problemes SEO"),
    ],
    sections: [
      Section(title: 'Fonctionnalites essentielles', contents: [
        CourseContent.text("Google Search Console (GSC) est l'outil SEO gratuit le plus important. Il fournit des donnees directes de Google."),
        CourseContent.bullet("Performances : impressions, clics, CTR, position moyenne"),
        CourseContent.bullet("Indexation : pages indexees, exclues, erreurs"),
        CourseContent.bullet("URL Inspection : diagnostic d'une URL specifique"),
        CourseContent.bullet("Core Web Vitals : LCP, INP, CLS"),
        CourseContent.bullet("Sitemaps : soumission et statut"),
        CourseContent.text("La verification du site se fait via fichier HTML, DNS, tag Google Analytics, ou Google Tag Manager."),
      ]),
      Section(title: 'Interpretation des rapports', contents: [
        CourseContent.text("Savoir lire les rapports GSC est essentiel :"),
        CourseContent.bullet("Rapport de performances : analyser les tendances, identifier les pages sous-performantes"),
        CourseContent.bullet("Rapport d'indexation : prioriser la correction des erreurs"),
        CourseContent.bullet("Rapport Core Web Vitals : identifier les URL a optimiser"),
        CourseContent.bullet("Rapport manuel actions : verifier les penalites eventuelles"),
        CourseContent.note("Exportez les donnees GSC vers Looker Studio pour un tableau de bord personnalise."),
      ]),
    ],
    takeaways: [
      CourseContent.text("GSC est l'outil SEO le plus important, gratuit et officiel"),
      CourseContent.text("Les rapports d'indexation et de performances sont les plus utilises"),
      CourseContent.text("Verifiez regulierement les Core Web Vitals et les erreurs d'indexation"),
    ],
    exercises: [
      CourseContent.text("Configurez GSC pour un site et explorez chaque rapport."),
      CourseContent.text("Exportez les donnees et creez un tableau de bord Looker Studio."),
    ],
  ),
  Chapter(
    number: 32,
    title: 'Google Analytics 4 (GA4)',
    icon: '1F4CA',
    partTitle: 'La Mesure et l\'Analyse',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Comprendre la structure de GA4"),
      CourseContent.text("Analyser le trafic et le comportement utilisateur"),
      CourseContent.text("Configurer les conversions et evenements"),
    ],
    sections: [
      Section(title: 'Fondamentaux de GA4', contents: [
        CourseContent.text("Google Analytics 4 est la nouvelle generation d'analyse web, basee sur les evenements et non plus les sessions."),
        CourseContent.bullet("Modele evenementiel : chaque action est un evenement"),
        CourseContent.bullet("Parametres et dimensions personnalises"),
        CourseContent.bullet("Integration avec Google Ads et BigQuery"),
        CourseContent.bullet("Focus sur la confidentialite (pas de stockage IP)"),
        CourseContent.text("GA4 utilise le machine learning pour combler les lacunes de donnees et fournir des insights predictifs."),
      ]),
      Section(title: 'Rapports SEO dans GA4', contents: [
        CourseContent.text("Pour analyser le trafic SEO dans GA4 :"),
        CourseContent.bullet("Acquisition > Trafic > Source : filtrer sur 'organic'"),
        CourseContent.bullet("Pages et ecrans : identifier les pages les plus performantes"),
        CourseContent.bullet("Evenements : configurer les conversions (achat, inscription, lead)"),
        CourseContent.bullet("Explorations : analyses personnalisees avancees"),
        CourseContent.bullet("Entonnoirs de conversion : visualiser le parcours client"),
        CourseContent.note("Connectez GA4 a GSC pour analyser les requetes et pages ensemble."),
      ]),
    ],
    takeaways: [
      CourseContent.text("GA4 est base sur les evenements, modele different d'Universal Analytics"),
      CourseContent.text("L'integration GSC + GA4 offre une vision complete du SEO"),
      CourseContent.text("Les explorations permettent des analyses avancees personnalisees"),
    ],
    exercises: [
      CourseContent.text("Configurez GA4 et creez un rapport d'acquisition trafic organique."),
      CourseContent.text("Mettez en place 3 evenements de conversion et creez un entonnoir."),
    ],
  ),
  Chapter(
    number: 33,
    title: 'Les KPIs SEO et le Reporting',
    icon: '1F4C8',
    partTitle: 'La Mesure et l\'Analyse',
    objectives: [
      CourseContent.heading('Objectifs pedagogiques'),
      CourseContent.text("Identifier les KPI SEO essentiels"),
      CourseContent.text("Creer des rapports SEO pertinents"),
      CourseContent.text("Communiquer la valeur du SEO aux parties prenantes"),
    ],
    sections: [
      Section(title: 'KPI fondamentaux', contents: [
        CourseContent.heading('Metriques de trafic'),
        CourseContent.bullet("Trafic organique : visites depuis les moteurs"),
        CourseContent.bullet("Taux de clics (CTR) : impressions generant un clic"),
        CourseContent.bullet("Pages vues par session : engagement"),
        CourseContent.heading('Metriques de positionnement'),
        CourseContent.bullet("Positions moyennes pour les mots-cles cibles"),
        CourseContent.bullet("Part de visibilite : % dans le top 3/10"),
        CourseContent.heading('Metriques de conversion'),
        CourseContent.bullet("Taux de conversion organique"),
        CourseContent.bullet("Revenu organique attribue au SEO"),
        CourseContent.bullet("ROI SEO"),
        CourseContent.important("Le positionnement est un moyen, pas une fin. L'objectif est le trafic qualifie et les conversions."),
      ]),
      Section(title: 'Tableaux de bord', contents: [
        CourseContent.text("Un tableau de bord SEO efficace combine GSC, GA4 et outils tiers :"),
        CourseContent.bullet("Looker Studio pour la visualisation"),
        CourseContent.bullet("Periodicite : quotidien pour le trafic, hebdomadaire pour les tendances, mensuel pour le reporting"),
        CourseContent.bullet("Segmentation par type de pages, appareil, localisation"),
        CourseContent.bullet("Comparaison periodes pour mesurer la progression"),
      ]),
    ],
    takeaways: [
      CourseContent.text("Les KPI SEO doivent etre alignes sur les objectifs business"),
      CourseContent.text("GSC et GA4 sont les sources de donnees principales"),
      CourseContent.text("La periodicite du reporting doit etre adaptee a l'audience"),
    ],
    exercises: [
      CourseContent.text("Creez un tableau de bord SEO Looker Studio complet."),
      CourseContent.text("Definissez 10 KPI pour un site e-commerce avec objectifs chiffres."),
    ],
  ),
];
