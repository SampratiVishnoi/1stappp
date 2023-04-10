import 'quizscreen.dart';
import 'package:flutter/material.dart';

class SubjectListScreen extends StatelessWidget {
  final String text;

  //  final String text;
  SubjectListScreen({super.key, required this.text});

  List subjectListData = [
    {"sem_name": "gh"}
  ];
  //  if (text=="1")
  //  {
  //   subjectListData= const [
  //     {"sem_name": "1st Semester"},
  //    {"sem_name": "2nd Semester"},
  //  ];
  //  }

  //   {"subject_name": "C++"},
  //   {"subject_name": "C Programming"},
  // ];

  @override
  Widget build(BuildContext context) {
    print("!!!!!!!!!!!!!!!!!!");
    if (text == "1") {
      subjectListData = const [
        {"sem_name": "1st Semester"},
        {"sem_name": "2nd Semester"},
      ];
    }
    if (text == "2") {
      subjectListData = const [
        {"sem_name": "3rd Semester"},
        {"sem_name": "4th Semester"},
      ];
    }
    if (text == "3") {
      subjectListData = const [
        {"sem_name": "5th Semester"},
        {"sem_name": "6th Semester"},
      ];
    }
    if (text == "4") {
      subjectListData = const [
        {"sem_name": "7th Semester"},
        {"sem_name": "8th Semester"},
      ];
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Semester List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ...subjectListData
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizScreen(),
                          ),
                        );
                      },
                      tileColor: Colors.teal,
                      textColor: Colors.white,
                      iconColor: Colors.white,
                      title: Text(
                        e['sem_name'],
                      ),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
