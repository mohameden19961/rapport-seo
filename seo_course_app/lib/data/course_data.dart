import 'package:seo_course_app/models/course_models.dart';
import 'package:seo_course_app/data/part1_data.dart';
import 'package:seo_course_app/data/part2_data.dart';
import 'package:seo_course_app/data/part3a_data.dart';
import 'package:seo_course_app/data/part3b_data.dart';
import 'package:seo_course_app/data/part4_data.dart';
import 'package:seo_course_app/data/part5_data.dart';
import 'package:seo_course_app/data/part6_data.dart';
import 'package:seo_course_app/data/part7_data.dart';
import 'package:seo_course_app/data/appendix_data.dart';

final List<Part> allParts = [
  Part(number: 1, title: 'Les Fondamentaux des Moteurs de Recherche', chapters: part1Chapters),
  Part(number: 2, title: "L'Indexation \u2014 Le Pilier Technique du Referencement", chapters: part2Chapters),
  Part(number: 3, title: 'Le SEO On-Page \u2014 Optimisation du Contenu', chapters: [...part3aChapters, ...part3bChapters]),
  Part(number: 4, title: 'Le SEO Off-Page \u2014 Autorite et Netlinking', chapters: part4Chapters),
  Part(number: 5, title: 'Le SEO Specialise', chapters: part5Chapters),
  Part(number: 6, title: 'La Mesure et l\'Analyse', chapters: part6Chapters),
  Part(number: 7, title: 'La Strategie et les Tendances du SEO', chapters: part7Chapters),
  Part(number: 8, title: 'Annexes', chapters: appendixChapters),
];

Chapter getChapterByNumber(int number) {
  for (final part in allParts) {
    for (final chapter in part.chapters) {
      if (chapter.number == number) return chapter;
    }
  }
  return allParts[0].chapters[0];
}

List<Chapter> searchChapters(String query) {
  final results = <Chapter>[];
  final q = query.toLowerCase();
  for (final part in allParts) {
    for (final chapter in part.chapters) {
      if (chapter.title.toLowerCase().contains(q) ||
          chapter.partTitle.toLowerCase().contains(q)) {
        if (!results.contains(chapter)) results.add(chapter);
        continue;
      }
      for (final section in chapter.sections) {
        if (section.title.toLowerCase().contains(q)) {
          if (!results.contains(chapter)) results.add(chapter);
          break;
        }
      }
    }
  }
  return results;
}
