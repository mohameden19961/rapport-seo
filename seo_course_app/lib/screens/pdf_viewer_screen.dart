import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:seo_course_app/theme/app_theme.dart';

class PdfViewerScreen extends StatefulWidget {
  final String pdfPath;
  final String title;
  const PdfViewerScreen({super.key, required this.pdfPath, this.title = 'PDF Viewer'});

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  final PdfViewerController _controller = PdfViewerController();
  int _currentPage = 1;
  int _totalPages = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(fontSize: 15)),
        actions: [
          if (_totalPages > 0)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Center(
                child: Text('$_currentPage / $_totalPages', style: const TextStyle(
                  color: AppTheme.textMuted, fontSize: 12,
                )),
              ),
            ),
          IconButton(
            icon: const Icon(Icons.zoom_in),
            onPressed: () => _controller.zoomLevel = _controller.zoomLevel + 0.5,
          ),
          IconButton(
            icon: const Icon(Icons.zoom_out),
            onPressed: () => _controller.zoomLevel = _controller.zoomLevel - 0.5,
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        widget.pdfPath,
        controller: _controller,
        onDocumentLoaded: (details) {
          setState(() => _totalPages = details.document.pages.count);
        },
        onPageChanged: (details) {
          setState(() => _currentPage = details.newPageNumber);
        },
      ),
    );
  }
}
