import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../reusableWidgets/Responsive.dart';
import '../createQuiz/mainScreen.dart';
import '../profilePage/getProfileInfo.dart';
import '../profilePage/profilePageMain.dart';
import '../profilePage/provider.dart';

ListTile listTileMyQuiz(context) {
  return ListTile(
    contentPadding: const EdgeInsets.only(left: 20),
    leading:
        const Icon(FontAwesomeIcons.receipt, size: 20, color: Colors.black),
    title: Text("My Quiz",
      style: TextStyle(
        fontSize: setSize(context, 18),
        fontWeight: FontWeight.w400,
      ),
    ),
    onTap: () {

    },
  );
}

ListTile listTileCreate(context) {
  return ListTile(
    contentPadding: const EdgeInsets.only(top: 15, left: 20),
    leading:
        const Icon(FontAwesomeIcons.circlePlus, size: 20, color: Colors.black),
    title: Text("Create Quiz",
      style: TextStyle(fontSize: setSize(context, 18),
        fontWeight: FontWeight.w400,
      ),
    ),
    onTap: () {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateQuiz()));
    },
  );
}

Widget listTileProfile(context) {
  return Container(
    child: Consumer<FacultyProfilePageProvider>(
      builder: (context, providerValue, child) {
        return ListTile(
          contentPadding: const EdgeInsets.only(top: 15, left: 20),
          leading: const Icon(FontAwesomeIcons.userLarge, size: 20, color: Colors.black),
          title: Text("My Profile",
            style: TextStyle(fontSize: setSize(context, 18), fontWeight: FontWeight.w400),
          ),
          onTap: () async {
            await getProfileInfo(providerValue);
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
          },
        );
      },
    ),
  );
}

ListTile listTileAbout(context) {
  return ListTile(
    style: ListTileStyle.drawer,
    contentPadding: const EdgeInsets.only(top: 15, left: 20),
    leading:
        const Icon(FontAwesomeIcons.circleInfo, size: 20, color: Colors.black),
    title: Text("About Us",
      style: TextStyle(fontSize: setSize(context, 18), fontWeight: FontWeight.w400),
    ),
    onTap: () {

    },
  );
}

ListTile listTileShare(context) {
  return ListTile(
    contentPadding: const EdgeInsets.only(top: 15, left: 20),
    leading:
        const Icon(FontAwesomeIcons.shareNodes, size: 20, color: Colors.black),
    title: Text(
      "Share",
      style: TextStyle(fontSize: setSize(context, 18), fontWeight: FontWeight.w400),
    ),
    onTap: () {

    },
  );
}
