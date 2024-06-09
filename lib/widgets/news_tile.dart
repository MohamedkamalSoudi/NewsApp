import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://images.unsplash.com/photo-1589123716223-cf1cd2d99a5e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "In a world filled with challenges and opportunities, our company stands as a beacon of innovation and success. We are united by a clear vision and ambitious goals, believing that every day is a new chance to make a difference.",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Join us on this inspiring journey, where together we achieve great milestones and write new chapters in our ongoing story of success.',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
