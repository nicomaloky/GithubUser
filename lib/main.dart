import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentationlayera/githubuser/githubuser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme (color:Color.fromARGB(255, 139, 0, 86)),
        iconTheme: IconThemeData(color:Colors.white),
      ),
      home: GithubUser(),
    );
  }
}