import 'package:flutter/material.dart';
import 'package:flutter_http/services/notes_service.dart';
import 'package:flutter_http/views/note_list.dart';
import 'package:get_it/get_it.dart';

void setUpLocator() {
  GetIt.I.registerLazySingleton(() => NotesService());
}

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter http Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NoteList(),
    );
  }
}
