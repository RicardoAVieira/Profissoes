import 'package:flutter/foundation.dart';

class Course with ChangeNotifier {
  final String id;
  final String title;
  final String duration;
  final String internship;
  final String description;
  final String acting;
  final String functions;
  final String professionalProfile;
  final String market;
  final String course;
  final String imagePath;
  bool isFavorite;

  Course({
    required this.id,
    required this.title,
    required this.duration,
    required this.internship,
    required this.description,
    required this.acting,
    required this.functions,
    required this.professionalProfile,
    required this.market,
    required this.course,
    required this.imagePath,
    this.isFavorite = false,
  });
  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
