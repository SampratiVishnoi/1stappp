
import 'package:flutter/material.dart';
import 'package:flutter_project/Student/provider.dart';
import 'package:flutter_project/Student/quizOfEachTeacher/quizFromEachFaculty.dart';
import 'package:provider/provider.dart';

import '../../reusableWidgets/createColor.dart';

Widget cardWidget(snapshot, index) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Consumer<StudentProvider>(
      builder: (context, providerValue, child) {
        return InkWell(
          child: Card(
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                // Create Column Widget of faculty Data to show in card............
                // These containers are defined below..........................
                facultyNameContainer(snapshot.data?.docs[index]["name"]),
                headingContainer("About Faculty"),
                contentContainer(snapshot.data?.docs[index]["about"]),
                headingContainer("Experience of Faculty"),
                contentContainer(snapshot.data?.docs[index]["experience"]),
              ],
            ),
          ),
          onTap: () {

            // Set Faculty ID to Provider...............
            providerValue.setFacultyEmail(snapshot.data.docs[index].id);
            // navigate to QuizfromFaculty() class to get list of quiz assigned by particular faculty........
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const QuizFromEachFaculty()));
          },
        );
      },
    ),
  );
}

// Container for faculty Name from snapshots.............................
Container facultyNameContainer(value) {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
    child: Text(value,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: hexToColor("#7520a1"),
            overflow: TextOverflow.visible)),
  );
}

// Container of Heading.............................
Container headingContainer(value) {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
    child: Text(value,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 15,
            color: hexToColor("#14735b"),
            fontWeight: FontWeight.w800,
            overflow: TextOverflow.visible)),
  );
}

// Container of Data from snapshots............................
Container contentContainer(value) {
  return Container(
      padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
      child: Text(value,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)));
}