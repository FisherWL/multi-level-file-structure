import 'package:flutter/material.dart';

class MultiLevelTile extends StatefulWidget {
  /// A single-line [ListTile] with an expansion arrow icon that expands or collapses
  /// the tile to reveal or hide the [children].
  ///
  const MultiLevelTile({
    Key? key,
    required this.title,
    this.children = const <Widget>[],
  }) : super(key: key);

  final Widget title;
  final List<Widget> children;

  @override
  State<MultiLevelTile> createState() => _MultiLevelTileState();
}

class _MultiLevelTileState extends State<MultiLevelTile> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          title: widget.title,
          trailing: _isExpanded ? const Icon(Icons.expand_less) : const Icon(Icons.expand_more),
        ),
        if (_isExpanded) Column(children: widget.children),
      ],
    );
  }
}
