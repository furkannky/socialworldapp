import 'package:flutter/material.dart';
import 'package:sociaworld/pages/loginPage.dart';
import 'package:sociaworld/widgets/bnb.dart';
import 'package:sociaworld/widgets/gonderikarti.dart';
import 'package:sociaworld/pages/profil_page.dart';
import 'package:sociaworld/pages/profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}


