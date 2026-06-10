import 'package:flutter/material.dart';
import 'package:seo_course_app/models/course_models.dart';
import 'package:seo_course_app/theme/app_theme.dart';
import 'package:seo_course_app/screens/chapter_screen.dart';

class PartScreen extends StatelessWidget {
  final Part part;
  const PartScreen({super.key, required this.part});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgLight,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Partie ${part.number}', style: const TextStyle(
              color: AppTheme.textMuted, fontSize: 12, fontWeight: FontWeight.w400,
            )),
            Text(part.title, style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold,
            ), maxLines: 1, overflow: TextOverflow.ellipsis),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.accentBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text('${part.chapters.length} ch.', style: const TextStyle(
                  color: AppTheme.googleBlue, fontSize: 12, fontWeight: FontWeight.w600,
                )),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: part.chapters.length,
        itemBuilder: (context, index) {
          final chapter = part.chapters[index];
          return _ChapterTile(
            chapter: chapter,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ChapterScreen(chapter: chapter),
              ));
            },
          );
        },
      ),
    );
  }
}

class _ChapterTile extends StatelessWidget {
  final Chapter chapter;
  final VoidCallback onTap;
  const _ChapterTile({required this.chapter, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final sectionCount = chapter.sections.length;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2)),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 44, height: 44,
                decoration: BoxDecoration(
                  color: AppTheme.accentBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text('${chapter.number}', style: const TextStyle(
                    color: AppTheme.googleBlue, fontWeight: FontWeight.bold, fontSize: 16,
                  )),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chapitre ${chapter.number}', style: const TextStyle(
                      color: AppTheme.textMuted, fontSize: 11,
                    )),
                    const SizedBox(height: 2),
                    Text(chapter.title, style: const TextStyle(
                      color: AppTheme.textDark, fontSize: 14, fontWeight: FontWeight.w500,
                    )),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.bgLight,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('${sectionCount}s', style: const TextStyle(
                  color: AppTheme.textMuted, fontSize: 11,
                )),
              ),
              const SizedBox(width: 4),
              Icon(Icons.chevron_right, color: AppTheme.textMuted.withValues(alpha: 0.3), size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
