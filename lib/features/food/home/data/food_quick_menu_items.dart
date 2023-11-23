import 'package:flutter/material.dart';

enum FoodQuickMenuItems {
  meals(
    title: 'Meals',
    count: '125',
    emoji: '🍝',
    color: Color(0xFFFEBCBD),
  ),
  burgers(
    title: 'Burgers',
    count: '86',
    emoji: '🍔',
    color: Color(0xFFB6E6F2),
  ),
  pizza(
    title: 'Pizza',
    count: '23',
    emoji: '🍕',
    color: Color(0xFFFAD3B4),
  ),
  soups(
    title: 'Soups',
    count: '67',
    emoji: '🍲',
    color: Color.fromARGB(255, 249, 239, 153),
  ),
  drinks(
    title: 'Drinks',
    count: '93',
    emoji: '🍸',
    color: Color.fromARGB(255, 130, 203, 132),
  ),
  sushi(
    title: 'Sushi',
    count: '77',
    emoji: '🍤',
    color: Color.fromARGB(255, 156, 95, 167),
  );

  final String count;
  final String emoji;
  final Color color;
  final String title;

  const FoodQuickMenuItems({
    required this.count,
    required this.emoji,
    required this.color,
    required this.title,
  });
}
