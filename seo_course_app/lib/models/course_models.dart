import 'package:flutter/material.dart';

enum ContentType { text, heading, subheading, subsubheading, bullet, numbered, code, table, objectives, takeaways, exercise, toolbox, advanced, infoBox, image, note, important }

class CourseContent {
  final ContentType type;
  final String text;
  final List<String>? bullets;
  final String? code;
  final String? language;
  final Color? boxColor;
  final String? boxTitle;
  final String? note;
  final String? important;

  const CourseContent({
    required this.type,
    required this.text,
    this.bullets,
    this.code,
    this.language,
    this.boxColor,
    this.boxTitle,
    this.note,
    this.important,
  });

  factory CourseContent.text(String t) => CourseContent(type: ContentType.text, text: t);
  factory CourseContent.heading(String t) => CourseContent(type: ContentType.heading, text: t);
  factory CourseContent.subheading(String t) => CourseContent(type: ContentType.subheading, text: t);
  factory CourseContent.subsubheading(String t) => CourseContent(type: ContentType.subsubheading, text: t);
  factory CourseContent.bullet(String t) => CourseContent(type: ContentType.bullet, text: t);
  factory CourseContent.numbered(String t) => CourseContent(type: ContentType.numbered, text: t);
  factory CourseContent.note(String t) => CourseContent(type: ContentType.note, text: t);
  factory CourseContent.important(String t) => CourseContent(type: ContentType.important, text: t);
  factory CourseContent.paragraph(String t) => CourseContent(type: ContentType.text, text: t);
  factory CourseContent.codeBlock(String c, {String? language}) => CourseContent(type: ContentType.code, text: c, code: c, language: language);
}

class Section {
  final String title;
  final List<CourseContent> contents;

  const Section({required this.title, required this.contents});
}

class Chapter {
  final int number;
  final String title;
  final String partTitle;
  final String icon;
  final List<Section> sections;
  final List<CourseContent>? objectives;
  final List<CourseContent>? takeaways;
  final List<CourseContent>? exercises;

  const Chapter({
    required this.number,
    required this.title,
    required this.partTitle,
    required this.icon,
    required this.sections,
    this.objectives,
    this.takeaways,
    this.exercises,
  });
}

class Part {
  final int number;
  final String title;
  final List<Chapter> chapters;

  const Part({required this.number, required this.title, required this.chapters});
}
