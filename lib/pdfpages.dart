import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class Pdf extends StatefulWidget {
  Pdf({Key? key}) : super(key: key);

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  pdfcreation() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.Center(child: pw.Text('Hello')),
        ),
      ),
    );

    final file = File('example.pdf');
    file.writeAsBytes(await pdf.save());
  }

  @override
  Widget build(BuildContext context) {
    pdfcreation();
    return Scaffold(
      body: Center(),
    );
  }
}
