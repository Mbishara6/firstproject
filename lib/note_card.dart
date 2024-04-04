import 'package:flutter/material.dart';
import 'author.dart';

class NotesCard extends StatelessWidget {

  final  Notes note;
  final  Function delete;

  const NotesCard( {super.key,  required this.note,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0,0.0),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[
                Text(
                  note.text,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[900],
                  ),),
                const SizedBox(height: 6.6),
                Text(
                  note.author,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[900],
                  ),),
                const SizedBox(height: 9.0,),
                TextButton.icon(
                    onPressed: (){
                      delete();
                    },
                icon: const Icon(Icons.delete),
                  label: const Text('Delete Note'),),
          
              ]
          ),
        ),
      ),
    );
  }
}


