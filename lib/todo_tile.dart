import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String gorevAdi;
  final bool gorevTamamlandi;
  Function(bool?)? onChanged;

  ToDoTile({
  super.key,
  required this.gorevAdi,
  required this.gorevTamamlandi,
  required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
        children: [
          //Check Box
          Checkbox(
            value: gorevTamamlandi,
            onChanged: onChanged,
            activeColor: Colors.black,
          ),

          //Görev
          Text(gorevAdi,
          style: TextStyle(decoration: gorevTamamlandi
              ? TextDecoration.lineThrough
              : TextDecoration.none),),
        ],
        ),
        decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
