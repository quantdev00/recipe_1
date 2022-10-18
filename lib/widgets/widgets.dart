import 'package:flutter/material.dart';

Widget dayOfTheWeek({
  required String day,
  required int date,
  required Color backgroundColor,
  required Color dayColor,
  required Color dateColor,
}) {
  return Container(
    height: 80,
    width: 50,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(18),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    child: Column(
      children: [
        Text(
          day,
          style: TextStyle(
            color: dayColor,
          ),
        ),
        const Spacer(),
        Text(
          date.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: dateColor,
          ),
        ),
      ],
    ),
  );
}
