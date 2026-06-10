import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seo_course_app/theme/app_theme.dart';
import 'package:seo_course_app/screens/home_screen.dart';
import 'package:seo_course_app/screens/part_screen.dart';
import 'package:seo_course_app/screens/chapter_screen.dart';
import 'package:seo_course_app/screens/toc_screen.dart';
import 'package:seo_course_app/models/course_models.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const SEOCourseApp());
}

class SEOCourseApp extends StatelessWidget {
  const SEOCourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEO - Guide Complet',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/toc':
            return MaterialPageRoute(builder: (_) => const TocScreen());
          case '/part':
            final part = settings.arguments as Part;
            return MaterialPageRoute(builder: (_) => PartScreen(part: part));
          case '/chapter':
            final chapter = settings.arguments as Chapter;
            return MaterialPageRoute(builder: (_) => ChapterScreen(chapter: chapter));
          default:
            return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      },
    );
  }
}
