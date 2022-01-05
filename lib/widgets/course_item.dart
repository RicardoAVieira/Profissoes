import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:world_of_professions/models/course.dart';
import 'package:world_of_professions/utils/app_routes.dart';

class ProfessionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Course course = Provider.of<Course>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.COURSE_DETAIL,
              arguments: course,
            );
          },
          child: Image.asset(
            course.imagePath,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black,
          trailing: Consumer<Course>(
            builder: (ctx, profession, _) => IconButton(
              onPressed: () {
                profession.toggleFavorite();
              },
              color: Theme.of(context).accentColor,
              icon: Icon(profession.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border),
            ),
          ),
          title: Text(
            course.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
