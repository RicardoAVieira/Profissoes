import 'package:flutter/material.dart';
import 'package:world_of_professions/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.COURSE_OVERVIEW,
                );
              },
              child: Image.asset(
                "assets/Img/home.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
