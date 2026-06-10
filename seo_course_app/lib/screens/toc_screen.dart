import 'package:flutter/material.dart';
import 'package:seo_course_app/data/course_data.dart';
import 'package:seo_course_app/models/course_models.dart';
import 'package:seo_course_app/theme/app_theme.dart';
import 'package:seo_course_app/screens/part_screen.dart';

class TocScreen extends StatelessWidget {
  const TocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgLight,
      appBar: AppBar(
        title: const Text('Table des matieres'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text('${allParts.length} parties', style: const TextStyle(
                color: AppTheme.textMuted, fontSize: 13,
              )),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 8, bottom: 20),
        itemCount: allParts.length,
        itemBuilder: (context, index) {
          final part = allParts[index];
          return _PartTile(part: part, onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => PartScreen(part: part),
            ));
          });
        },
      ),
    );
  }
}

class _PartTile extends StatelessWidget {
  final Part part;
  final VoidCallback onTap;
  const _PartTile({required this.part, required this.onTap});

  static final _partIcons = [
    Icons.public, Icons.bookmark, Icons.article, Icons.auto_awesome,
    Icons.link, Icons.dns, Icons.analytics, Icons.checklist,
  ];

  @override
  Widget build(BuildContext context) {
    final icon = _partIcons[(part.number - 1) % _partIcons.length];
    final chapterCount = part.chapters.length;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8, offset: const Offset(0, 2)),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 48, height: 48,
                decoration: BoxDecoration(
                  color: AppTheme.accentBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: AppTheme.googleBlue, size: 24),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Partie ${part.number}', style: const TextStyle(
                      color: AppTheme.textMuted, fontSize: 12,
                    )),
                    const SizedBox(height: 2),
                    Text(part.title, style: const TextStyle(
                      color: AppTheme.textDark, fontSize: 15, fontWeight: FontWeight.w600,
                    )),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.accentBg,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('$chapterCount ch.', style: const TextStyle(
                  color: AppTheme.googleBlue, fontSize: 12, fontWeight: FontWeight.w500,
                )),
              ),
              const SizedBox(width: 8),
              Icon(Icons.chevron_right, color: AppTheme.textMuted.withValues(alpha: 0.3)),
            ],
          ),
        ),
      ),
    );
  }
}
