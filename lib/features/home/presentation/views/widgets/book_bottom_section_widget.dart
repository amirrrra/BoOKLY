import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookBottomSectionWidget extends StatelessWidget {
  const BookBottomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Text(
            'Overview',
            style: Styles.style20,
          ),
          SizedBox(height: 10),
          Text(
            'This book compares constructs from C with constructs from Ada in terms of levels of abstractions. Studying these languages provides a firm foundation for an extensive examination of object-oriented language support in C++ and Ada 95. It explains what alternatives are available to the language designer, how language constructs should be used in terms of safety and readability, how language constructs are implemented and which ones can be efficiently compiled and the role of language in expressing and enforcing abstractions. The final chapters introduce functional (ML) and logic (Prolog) programming languages to demonstrate that imperative languages are not conceptual necessities for programming.',
            style: Styles.style14,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
