class File {
  final String title;
  final List<File> children;

  File(this.title, [this.children = const <File>[]]);
}
