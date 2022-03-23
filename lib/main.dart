import 'package:flutter/material.dart';
import 'package:list_item_download_progress/course_list_tem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> courseList = [
    "Dart",
    "Flutter",
    "Java",
    "Kotlin",
    "Swift",
    "Angular",
    "React",
    "Spring",
    "JavaScript",
    "C++",
    "Python",
    "Android",
    "Iconic",
    "Xamarin"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Listview Item Download Progress"),
      ),
      body: ListView.builder(
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          return CourseListItem(courseName: courseList[index]);
        },
      ),
    );
  }
}
