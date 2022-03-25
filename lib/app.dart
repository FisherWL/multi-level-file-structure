import 'package:flutter/material.dart';
import 'package:lark_innovation/file_structure/file_structure.dart';

// only extend [MaterialApp]
// because there are no widgets to compose
//
class FileApp extends MaterialApp {
  const FileApp({Key? key}) : super(key: key, home: const FileView());
}
