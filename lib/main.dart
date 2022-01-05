import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:world_of_professions/providers/courses.dart';
import 'package:world_of_professions/utils/app_routes.dart';
import 'package:world_of_professions/view/home_screen.dart';
import 'package:world_of_professions/view/course_detail_screen.dart';
import 'package:world_of_professions/view/courses_overview_screen.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => new Courses(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.pinkAccent,
          backgroundColor: Colors.white,
        ),
        title: 'Graduações',
        home: HomeScreen(),
        routes: {
          AppRoutes.HOME_SCREEN: (ctx) => HomeScreen(),
          AppRoutes.COURSE_DETAIL: (ctx) => CourseDetailScreen(),
          AppRoutes.COURSE_OVERVIEW: (ctx) => CoursesOverviewScreen(),
        },
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
