import 'package:lark_innovation/file_structure/file_structure.dart';

/// demo data
/// expected hierarchy:
///
/// ```dart
/// ├── folder-1
/// │   ├── doc-1
/// ├── folder-2
/// │   ├── folder-3
/// │       ├── doc-2
/// ├── doc-3
/// ```
///
final List<File> data = <File>[
  // first item
  File(
    'folder-1',
    <File>[File('doc-1')],
  ),
  // second item
  File(
    'folder-2',
    <File>[
      File(
        'folder-3',
        <File>[File('doc-2')],
      ),
    ],
  ),
  // third item
  File('doc-4'),
];
