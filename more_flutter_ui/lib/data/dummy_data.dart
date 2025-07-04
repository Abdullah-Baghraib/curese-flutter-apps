import 'package:flutter/material.dart';

import '../models/page_details.dart';

final List<PageDetails> myData = [
  PageDetails(
    title: 'Title 1',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
    imageUrl: 'images/q1.jpg',
    iconData: Icons.add_box,
  ),
  PageDetails(
    title: 'Title 2',
    description:
        'Sed do eiusmod tempor et dolore magna aliqua. Ut enim ad minim veniam',
    imageUrl: 'images/q2.jpg',
    iconData: Icons.add_circle,
  ),
  PageDetails(
    title: 'Title 3',
    description:
        'Quis nostrud exercitation ullamco laboris nisi ut aliquip ex consequat.',
    imageUrl: 'images/q3.jpg',
    iconData: Icons.add_circle_outline,
  ),
  PageDetails(
    title: 'Title 4',
    description:
        'Duis aute irure dolor in reprehenderit in voluptatenulla pariatur.',
    imageUrl: 'images/q4.jpg',
    iconData: Icons.add_comment,
  ),
];
