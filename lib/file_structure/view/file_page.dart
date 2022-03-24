import 'package:flutter/material.dart';
import 'package:lark_innovation/file_structure/file_structure.dart';

class FilePage extends StatelessWidget {
  const FilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return FileItem(
            file: data[index],
            level: 0,
          );
        },
      ),
    );
  }
}
