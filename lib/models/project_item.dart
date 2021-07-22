import 'package:flutter/material.dart';

class ProjectItemModel {
  final String imageFront;
  final String imageBack;
  final String name;
  final String detail;
  final VoidCallback onTap;
  final Color first;
  final Color second;
  final List<String> tools;


  ProjectItemModel(
      {required this.imageFront,
      required this.imageBack,
      required this.name,
      required this.detail,
      required this.onTap,
      required this.first,
      required this.second,
      required this.tools
      });
}

class RightProjectItemModel {
  final String imageFront;
  final String imageBack;
  final String name;
  final String detail;
  final VoidCallback onTap;

  RightProjectItemModel({
    required this.imageFront,
    required this.imageBack,
    required this.name,
    required this.detail,
    required this.onTap,
  });
}
