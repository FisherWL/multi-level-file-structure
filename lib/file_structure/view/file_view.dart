import 'package:flutter/material.dart';
import 'package:lark_innovation/constant.dart';
import 'package:lark_innovation/file_structure/file_structure.dart';

class FileView extends StatelessWidget {
  const FileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => FileItem(file: data[index]),
      ),
    );
  }
}
