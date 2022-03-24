class File {
  final String title;
  final List<File> children;

  File(this.title, [this.children = const <File>[]]);
}

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
      )
    ],
  ),
  // third item
  File('doc-3'),
];
