import 'package:flutter/material.dart';
class CategoryModel{
  final String text;
  final Color color;
  CategoryModel({required this.text,required this.color});
}
List<CategoryModel> categories = [
  CategoryModel(text: "Dental", color: const Color(0xffFF9598)),
  CategoryModel(text: "Wellness", color: const Color(0xff19E5A5)),
  CategoryModel(text: "Homeo", color: const Color(0xffFFC06F)),
  CategoryModel(text: "Eye care", color: const Color(0xff4DB7FF))
];