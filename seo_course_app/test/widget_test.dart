import 'package:flutter_test/flutter_test.dart';
import 'package:seo_course_app/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const SEOCourseApp());
    expect(find.text('SUPNUM'), findsOneWidget);
  });
}
