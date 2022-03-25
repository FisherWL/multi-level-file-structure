import 'package:flutter/material.dart';
import 'package:lark_innovation/file_structure/file_structure.dart';

class FileItem extends StatelessWidget {
  const FileItem({Key? key, required this.file, this.level = 0}) : super(key: key);

  final File file;
  final int level;

  /// function that recursively creates  multi-level tile(s).
  Widget _buildTiles(File root, int level) {
    //
    // [indent] to indicate file structure hierarchy
    // for example:
    //
    // ├── level_1
    // │   ├── level_2
    // │   ├── level_2
    // │   │   ├── level_3
    // │   │   ├── level_3
    // │   │   │   └── level_4
    // │   │   └── level_3
    // │   │       ├── level_4
    // │   │       └── level_4
    // │   ├── level_2
    // │   └── level_2
    // ├── level_1
    // ├── level_1
    //
    double indent = (16 * level).toDouble();
    if (root.children.isEmpty) {
      return Padding(
        padding: level == 0 ? EdgeInsets.zero : EdgeInsets.only(left: indent),
        child: ListTile(title: Text(root.title)),
      );
    }

    return Padding(
      padding: EdgeInsets.only(left: indent),
      child: MultiLevelTile(
        title: Text(root.title),
        children: root.children
            .map<Widget>(
              (element) => _buildTiles(element, level + 1),
            )
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(file, level);
  }
}
