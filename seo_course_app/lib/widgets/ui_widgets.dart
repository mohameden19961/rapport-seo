import 'package:flutter/material.dart';
import 'package:seo_course_app/models/course_models.dart';
import 'package:seo_course_app/theme/app_theme.dart';

class ObjectivesBox extends StatelessWidget {
  final List<CourseContent> items;
  const ObjectivesBox({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.accentBg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.googleBlue.withValues(alpha: 0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.emoji_events_outlined, color: AppTheme.googleBlue.withValues(alpha: 0.8), size: 20),
              const SizedBox(width: 8),
              const Text('Objectifs', style: TextStyle(
                color: AppTheme.textDark, fontSize: 15, fontWeight: FontWeight.bold,
              )),
            ],
          ),
          const SizedBox(height: 10),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('•  ', style: TextStyle(color: AppTheme.googleBlue.withValues(alpha: 0.6), fontSize: 14)),
                Expanded(child: Text(item.text, style: const TextStyle(
                  color: AppTheme.textDark, fontSize: 13, height: 1.5,
                ))),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class TakeawaysBox extends StatelessWidget {
  final List<CourseContent> items;
  const TakeawaysBox({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.warmBg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.googleYellow.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.lightbulb_outline, color: AppTheme.goldAccent.withValues(alpha: 0.8), size: 20),
              const SizedBox(width: 8),
              const Text('Points cles a retenir', style: TextStyle(
                color: AppTheme.textDark, fontSize: 15, fontWeight: FontWeight.bold,
              )),
            ],
          ),
          const SizedBox(height: 10),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle_outline, size: 16, color: AppTheme.goldAccent.withValues(alpha: 0.6)),
                const SizedBox(width: 8),
                Expanded(child: Text(item.text, style: const TextStyle(
                  color: AppTheme.textDark, fontSize: 13, height: 1.5,
                ))),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class ExercisesBox extends StatelessWidget {
  final List<CourseContent> items;
  const ExercisesBox({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.greenBg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.googleGreen.withValues(alpha: 0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.fitness_center, color: AppTheme.googleGreen.withValues(alpha: 0.8), size: 20),
              const SizedBox(width: 8),
              const Text('Exercices', style: TextStyle(
                color: AppTheme.textDark, fontSize: 15, fontWeight: FontWeight.bold,
              )),
            ],
          ),
          const SizedBox(height: 10),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(item.text, style: const TextStyle(
              color: AppTheme.textDark, fontSize: 13, height: 1.5,
            )),
          )),
        ],
      ),
    );
  }
}

class CodeBlock extends StatelessWidget {
  final String code;
  final String? language;
  const CodeBlock({super.key, required this.code, this.language});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (language != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(language!, style: TextStyle(
                color: AppTheme.textMuted.withValues(alpha: 0.6), fontSize: 11,
              )),
            ),
          SelectableText(code, style: const TextStyle(
            fontFamily: 'RobotoMono', fontSize: 13, color: AppTheme.textDark, height: 1.5,
          )),
        ],
      ),
    );
  }
}

class ContentRenderer extends StatelessWidget {
  final CourseContent content;
  const ContentRenderer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    switch (content.type) {
      case ContentType.text:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(content.text, style: const TextStyle(
            color: AppTheme.textDark, fontSize: 14, height: 1.7,
          )),
        );

      case ContentType.heading:
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
          child: Text(content.text, style: const TextStyle(
            color: AppTheme.textDark, fontSize: 17, fontWeight: FontWeight.bold,
          )),
        );

      case ContentType.subheading:
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: Text(content.text, style: const TextStyle(
            color: AppTheme.textDark, fontSize: 15, fontWeight: FontWeight.w600,
          )),
        );

      case ContentType.subsubheading:
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 2),
          child: Text(content.text, style: const TextStyle(
            color: AppTheme.textMuted, fontSize: 14, fontWeight: FontWeight.w500,
          )),
        );

      case ContentType.bullet:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('•  ', style: TextStyle(color: AppTheme.cyan.withValues(alpha: 0.5), fontSize: 18)),
              Expanded(child: Text(content.text, style: const TextStyle(
                color: AppTheme.textDark, fontSize: 13.5, height: 1.6,
              ))),
            ],
          ),
        );

      case ContentType.numbered:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('•  ', style: TextStyle(color: AppTheme.textDark, fontSize: 14)),
              Expanded(child: Text(content.text, style: const TextStyle(
                color: AppTheme.textDark, fontSize: 13.5, height: 1.6,
              ))),
            ],
          ),
        );

      case ContentType.code:
        return CodeBlock(code: content.code ?? content.text, language: content.language);

      case ContentType.note:
        return _noteBox(text: content.text, icon: Icons.info_outline, color: AppTheme.orangeBg);

      case ContentType.important:
        return _noteBox(text: content.text, icon: Icons.warning_amber_rounded, color: AppTheme.orangeBg);

      case ContentType.infoBox:
        return _infoBox(text: content.text, color: content.boxColor);

      case ContentType.toolbox:
        return _toolboxBox(content: content);

      case ContentType.advanced:
        return _advancedBox(content: content);

      case ContentType.image:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: AppTheme.bgLight,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image_outlined, size: 48, color: AppTheme.textMuted.withValues(alpha: 0.3)),
                      if (content.text.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(content.text, style: TextStyle(
                            color: AppTheme.textMuted.withValues(alpha: 0.5), fontSize: 12,
                          )),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

      case ContentType.table:
        return _buildTable(content);

      case ContentType.objectives:
      case ContentType.takeaways:
      case ContentType.exercise:
        return const SizedBox.shrink();
    }
  }

  Widget _noteBox({required String text, required IconData icon, required Color color}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFFFE0B2)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppTheme.googleYellow.withValues(alpha: 0.8), size: 20),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(
            color: AppTheme.textDark, fontSize: 13, height: 1.5,
          ))),
        ],
      ),
    );
  }

  Widget _infoBox({required String text, Color? color}) {
    final c = color ?? AppTheme.googleBlue;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: c.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: c.withValues(alpha: 0.15)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.lightbulb_outline, color: c.withValues(alpha: 0.6), size: 18),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(
            color: AppTheme.textDark, fontSize: 13, height: 1.5,
          ))),
        ],
      ),
    );
  }

  Widget _toolboxBox({required CourseContent content}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.accentBg,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.googleBlue.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.build_outlined, color: AppTheme.googleBlue.withValues(alpha: 0.7), size: 18),
              const SizedBox(width: 8),
              Text(content.boxTitle ?? 'Boite a outils', style: const TextStyle(
                color: AppTheme.textDark, fontSize: 13, fontWeight: FontWeight.w600,
              )),
            ],
          ),
          if (content.text.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(content.text, style: const TextStyle(
              color: AppTheme.textDark, fontSize: 14, height: 1.6,
            )),
          ],
          if (content.bullets != null)
            ...content.bullets!.map((b) => Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: TextStyle(color: AppTheme.googleBlue.withValues(alpha: 0.5))),
                  Expanded(child: Text(b, style: const TextStyle(
                    color: AppTheme.textDark, fontSize: 13, height: 1.5,
                  ))),
                ],
              ),
            )),
        ],
      ),
    );
  }

  Widget _advancedBox({required CourseContent content}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.bgLight,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.purple.withValues(alpha: 0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.auto_awesome, color: AppTheme.purple.withValues(alpha: 0.7), size: 18),
              const SizedBox(width: 8),
              Text(content.boxTitle ?? 'Approfondissement', style: TextStyle(
                color: AppTheme.purple.withValues(alpha: 0.8), fontSize: 13, fontWeight: FontWeight.w600,
              )),
            ],
          ),
          if (content.text.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(content.text, style: const TextStyle(
              color: AppTheme.textDark, fontSize: 14, height: 1.6,
            )),
          ],
          if (content.bullets != null)
            ...content.bullets!.map((b) => Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: TextStyle(color: AppTheme.purple.withValues(alpha: 0.5))),
                  Expanded(child: Text(b, style: const TextStyle(
                    color: AppTheme.textDark, fontSize: 13, height: 1.5,
                  ))),
                ],
              ),
            )),
        ],
      ),
    );
  }

  Widget _buildTable(CourseContent content) {
    if (content.bullets == null || content.bullets!.isEmpty) return const SizedBox();
    final rows = content.bullets!;
    final cols = rows.isNotEmpty ? rows.first.split('|').length : 0;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: DataTable(
        headingRowColor: WidgetStateProperty.all(AppTheme.bgLight),
        border: TableBorder.all(color: Colors.grey.shade200),
        columnSpacing: 20,
        columns: List.generate(cols, (i) => DataColumn(label: Text('Col ${i + 1}', style: const TextStyle(
          color: AppTheme.textDark, fontWeight: FontWeight.bold, fontSize: 13,
        )))),
        rows: rows.map((r) {
          final cells = r.split('|');
          return DataRow(
            cells: cells.map((c) => DataCell(Text(c.trim(), style: const TextStyle(
              color: AppTheme.textDark, fontSize: 13,
            )))).toList(),
          );
        }).toList(),
      ),
    );
  }
}
