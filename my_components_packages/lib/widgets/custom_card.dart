import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title, subtitle, bodyContent;
  final String? imageUrl;
  final Function()? onTap;

  const CustomCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.imageUrl,
      required this.bodyContent,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.amber.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            // Image
            Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                imageUrl ??
                    'https://static.thenounproject.com/png/1527904-200.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 10),

            // Title, Subtitle, and Content
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                // Subtitle
                Text(
                  subtitle,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey.shade600),
                ),
                // Body Content
                Text(
                  bodyContent,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
