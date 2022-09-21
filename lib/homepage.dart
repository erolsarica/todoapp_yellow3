import 'package:flutter/material.dart';
import 'package:todoapp_yellow/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Görev Listesi
  List toDoList = [
    ["Dart Dersleri Tamamlanacak", false],
    ["1. Dereceden Denklemler", false],
  ];

  // checkbox tıklandı
  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('NOT DEFTERİ'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              gorevAdi: toDoList[index][0],
              gorevTamamlandi: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
          );
        },

      ),
    );
  }
}
