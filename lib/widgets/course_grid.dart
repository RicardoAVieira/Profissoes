import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:world_of_professions/providers/courses.dart';
import 'package:world_of_professions/widgets/course_item.dart';

class ProfessionGrid extends StatelessWidget {
  final bool showFavoriteOnly;

  ProfessionGrid(this.showFavoriteOnly);

  @override
  Widget build(BuildContext context) {
    final coursesProvider = Provider.of<Courses>(context, listen: true);
    final courses = showFavoriteOnly
        ? coursesProvider.favoriteItems
        : coursesProvider.items;

    coursesProvider.items;

    return GridView.builder(
      itemCount: courses.length,
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: courses[i],
        child: ProfessionItem(),
      ),
    );
  }
}
