import 'package:flutter/material.dart';
import 'package:world_of_professions/models/course.dart';

class CourseDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    double larguraTela = MediaQuery.of(context).size.width;
    final Course course = ModalRoute.of(context)!.settings.arguments as Course;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Column(
        children: [
          SizedBox(height: alturaTela * 0.030),
          Center(
            child: Text(
              course.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(height: alturaTela * 0.030),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: alturaTela * 0.25,
              child: Image.asset(
                course.imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: alturaTela * 0.030),
          Container(
            height: alturaTela * 0.47,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Duração', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.duration,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                  Text('Estágio', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.internship,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                  Text('Descrição', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.description,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                  Text('Atuação', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.acting,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                  Text('Funções', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.functions,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                  Text('Perfil Profissional', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.professionalProfile,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                  Text('Mercado', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.market,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                  Text('Curso', style: TextStyle(fontSize: 22)),
                  Container(
                    child: Text(
                      course.course,
                      textAlign: TextAlign.justify,
                    ),
                    margin: EdgeInsets.fromLTRB(
                      larguraTela * 0.044,
                      alturaTela * 0.005,
                      larguraTela * 0.044,
                      alturaTela * 0.02,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
