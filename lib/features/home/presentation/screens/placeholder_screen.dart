import 'package:flutter/material.dart';

class PlaceholderTabScreen extends StatelessWidget {
  final String title;
  const PlaceholderTabScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}

