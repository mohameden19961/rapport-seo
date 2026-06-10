import 'package:flutter/material.dart';
import 'package:seo_course_app/models/course_models.dart';
import 'package:seo_course_app/theme/app_theme.dart';
import 'package:seo_course_app/widgets/ui_widgets.dart';

class ChapterScreen extends StatelessWidget {
  final Chapter chapter;
  const ChapterScreen({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgLight,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.fromLTRB(4, 8, 16, 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppTheme.primary.withValues(alpha: 0.95),
                    AppTheme.primary.withValues(alpha: 0.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Chapitre ${chapter.number}', style: const TextStyle(
                              color: AppTheme.cyan, fontSize: 12, fontWeight: FontWeight.w600,
                            )),
                            Text(chapter.title, style: const TextStyle(
                              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold,
                            ), maxLines: 2),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 4),
                    child: Row(
                      children: [
                        const Icon(Icons.folder_outlined, color: Colors.white38, size: 14),
                        const SizedBox(width: 6),
                        Text(chapter.partTitle, style: const TextStyle(
                          color: Colors.white60, fontSize: 11,
                        )),
                        const Spacer(),
                        Text('${chapter.sections.length} sections', style: const TextStyle(
                          color: Colors.white38, fontSize: 11,
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Content
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 40),
                children: [
                  // Objectives
                  if (chapter.objectives != null && chapter.objectives!.isNotEmpty)
                    ObjectivesBox(items: chapter.objectives!),
                  // Sections
                  ...chapter.sections.map((section) => _SectionWidget(section: section)),
                  // Takeaways
                  if (chapter.takeaways != null && chapter.takeaways!.isNotEmpty)
                    TakeawaysBox(items: chapter.takeaways!),
                  // Exercises
                  if (chapter.exercises != null && chapter.exercises!.isNotEmpty)
                    ExercisesBox(items: chapter.exercises!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionWidget extends StatelessWidget {
  final Section section;
  const _SectionWidget({required this.section});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 24,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppTheme.cyan, AppTheme.googleBlue],
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(section.title, style: const TextStyle(
                  color: AppTheme.textDark,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ],
          ),
        ),
        ...section.contents.map((content) => ContentRenderer(content: content)),
      ],
    );
  }
}
