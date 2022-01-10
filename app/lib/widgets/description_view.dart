import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  final String title;
  final List<DescriptionContentView> contents;
  const DescriptionView({
    Key? key,
    required this.title,
    this.contents = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [...contents];
    children.insert(
      0,
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        color: Colors.blue,
        child: Text(title),
      ),
    );
    return Column(
      children: children,
    );
  }
}

class DescriptionContentView extends StatelessWidget {
  final String? description;
  final String? output;
  final Widget child;
  const DescriptionContentView({
    Key? key,
    required this.child,
    this.description,
    this.output,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (description != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description!,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        if (output != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(output!),
          ),
        child,
      ],
    );
  }
}
