import 'package:flutter/material.dart';
import 'package:world_of_professions/widgets/course_grid.dart';

enum FilterOptions {
  Favorite,
  All,
}

class CoursesOverviewScreen extends StatefulWidget {
  @override
  _CoursesOverviewScreenState createState() => _CoursesOverviewScreenState();
}

class _CoursesOverviewScreenState extends State<CoursesOverviewScreen> {
  bool _showFvoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Mundo das Profissões'),
        actions: [
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorite) {
                    _showFvoriteOnly = true;
                  } else {
                    _showFvoriteOnly = false;
                  }
                });
              },
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text("Somente Favoritos"),
                      value: FilterOptions.Favorite,
                    ),
                    PopupMenuItem(
                      child: Text("Todos"),
                      value: FilterOptions.All,
                    ),
                  ])
        ],
      ),
      body: ProfessionGrid(_showFvoriteOnly),
    );
  }
}
