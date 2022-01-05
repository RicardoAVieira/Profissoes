import 'package:flutter/material.dart';
import 'package:world_of_professions/data/dummy_data.dart';
import 'package:world_of_professions/models/course.dart';

class Courses with ChangeNotifier {
  List<Course> _items = DUMMY_COURSES;

  List<Course> get items {
    return [..._items];
  }

  List<Course> get favoriteItems {
    return _items.where((prof) => prof.isFavorite).toList();
  }

  void addCourse(Course course) {
    _items.add(course);
    notifyListeners();
  }
}
