import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  final String imageUrl;
  final String postTitle;
  final String postDescription;

  const PostDetailPage({
    super.key,
    required this.imageUrl,
    required this.postTitle,
    required this.postDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            const SizedBox(height: 16.0),
            Text(
              postTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              postDescription,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}