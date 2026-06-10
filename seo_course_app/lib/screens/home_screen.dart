import 'package:flutter/material.dart';
import 'package:seo_course_app/theme/app_theme.dart';
import 'package:seo_course_app/data/course_data.dart';
import 'package:seo_course_app/screens/toc_screen.dart';
import 'package:seo_course_app/screens/pdf_viewer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final totalChapters = allParts.fold<int>(0, (sum, p) => sum + p.chapters.length);
    return Scaffold(
      body: Container(
        color: AppTheme.bgLight,
        child: SafeArea(
          child: Column(
            children: [
              // Top bar
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.search, color: AppTheme.primary.withValues(alpha: 0.6)),
                      onPressed: () => _showSearch(context),
                    ),
                    Text(
                      'SUPNUM',
                      style: TextStyle(
                        color: AppTheme.cyan,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.menu_book, color: AppTheme.primary.withValues(alpha: 0.6)),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(
                        builder: (_) => const TocScreen(),
                      )),
                    ),
                  ],
                ),
              ),
              // Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      // Header card
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF1A1A2E), Color(0xFF16213E)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: AppTheme.primary.withValues(alpha: 0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 80, height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppTheme.cyan.withValues(alpha: 0.15),
                                border: Border.all(color: AppTheme.cyan.withValues(alpha: 0.3), width: 2),
                              ),
                              child: Icon(Icons.search_rounded, size: 40, color: AppTheme.cyan.withValues(alpha: 0.9)),
                            ),
                            const SizedBox(height: 16),
                            const Text('SEO', style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900,
                              color: Colors.white, letterSpacing: 6,
                            )),
                            const Text('Guide Complet & Approfondi', style: TextStyle(
                              fontSize: 15, color: Color(0xFFB0C4D8), letterSpacing: 1,
                            )),
                            const SizedBox(height: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                              decoration: BoxDecoration(
                                color: AppTheme.cyan.withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text('Indexation & Referencement Web', style: TextStyle(
                                fontSize: 11, color: Color(0xFF00DCB4), fontWeight: FontWeight.w500,
                              )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Stats row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(child: _StatCard(label: 'Parties', value: '${allParts.length}', icon: Icons.layers_outlined, color: AppTheme.googleBlue)),
                            const SizedBox(width: 12),
                            Expanded(child: _StatCard(label: 'Chapitres', value: '$totalChapters', icon: Icons.menu_book_outlined, color: AppTheme.cyan)),
                            const SizedBox(width: 12),
                            Expanded(child: _StatCard(label: 'Exercices', value: '${totalChapters * 2}+', icon: Icons.fitness_center_outlined, color: AppTheme.orange)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      // Parts list
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const Text('Au programme', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold, color: AppTheme.textDark,
                            )),
                            const Spacer(),
                            Text('${allParts.length} parties', style: TextStyle(
                              fontSize: 13, color: AppTheme.textMuted.withValues(alpha: 0.8),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      ...allParts.map((part) => _PartCard(part: part)),
                      const SizedBox(height: 16),
                      // Start button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton.icon(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(
                              builder: (_) => const TocScreen(),
                            )),
                            icon: const Icon(Icons.play_arrow_rounded, size: 24),
                            label: const Text('Commencer la formation', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primary,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                              elevation: 4,
                              shadowColor: AppTheme.primary.withValues(alpha: 0.3),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 44,
                          child: OutlinedButton.icon(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(
                              builder: (_) => const PdfViewerScreen(
                                pdfPath: 'assets/rapport_seo.pdf',
                                title: 'Rapport SEO - Version complete',
                              ),
                            )),
                            icon: const Icon(Icons.picture_as_pdf, size: 20),
                            label: const Text('Telecharger le PDF complet', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: AppTheme.textMuted,
                              side: BorderSide(color: AppTheme.textMuted.withValues(alpha: 0.3)),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSearch(BuildContext context) {
    showSearch(context: context, delegate: _ChapterSearch(allParts));
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;
  const _StatCard({required this.label, required this.value, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 6),
          Text(value, style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.bold)),
          Text(label, style: TextStyle(color: AppTheme.textMuted.withValues(alpha: 0.7), fontSize: 11)),
        ],
      ),
    );
  }
}

class _PartCard extends StatelessWidget {
  final dynamic part;
  const _PartCard({required this.part});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => Navigator.pushNamed(context, '/part', arguments: part),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2)),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 42, height: 42,
                decoration: BoxDecoration(
                  color: AppTheme.accentBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('${part.number}', style: TextStyle(
                  color: AppTheme.googleBlue, fontWeight: FontWeight.bold, fontSize: 16,
                ))),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(part.title, style: const TextStyle(
                      color: AppTheme.textDark, fontWeight: FontWeight.w600, fontSize: 14,
                    )),
                    Text('${part.chapters.length} chapitres', style: TextStyle(
                      color: AppTheme.textMuted.withValues(alpha: 0.8), fontSize: 12,
                    )),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: AppTheme.textMuted.withValues(alpha: 0.4)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChapterSearch extends SearchDelegate<dynamic> {
  final List<dynamic> parts;
  _ChapterSearch(this.parts);

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ''),
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back), onPressed: () => close(context, null),
  );

  @override
  Widget buildResults(BuildContext context) => _buildList(context);

  @override
  Widget buildSuggestions(BuildContext context) => _buildList(context);

  Widget _buildList(BuildContext ctx) {
    final results = searchChapters(query);
    if (results.isEmpty && query.isNotEmpty) {
      return const Center(child: Text('Aucun resultat'));
    }
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (_, i) {
        final ch = results[i];
        return ListTile(
          leading: Container(
            width: 36, height: 36,
            decoration: BoxDecoration(
              color: AppTheme.accentBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: Text('${ch.number}', style: const TextStyle(color: AppTheme.googleBlue, fontWeight: FontWeight.bold))),
          ),
          title: Text(ch.title, style: const TextStyle(color: AppTheme.textDark)),
          subtitle: Text('${ch.partTitle} - Ch. ${ch.number}', style: TextStyle(color: AppTheme.textMuted.withValues(alpha: 0.7))),
          onTap: () {
            close(ctx, null);
            Navigator.pushNamed(ctx, '/chapter', arguments: ch);
          },
        );
      },
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) => ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white, foregroundColor: AppTheme.textDark),
  );
}
