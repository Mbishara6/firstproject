import 'package:flutter/material.dart';
import 'author.dart';
import 'note_card.dart';

void main() {
  runApp(const MaterialApp(
    home:Dummy() ,
  ));
}
class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  List<Notes> notes =[
  Notes(text:'The best and most beautiful things in the world cannot be seen'
      ' or even touched - they must be'
      ' felt with the heart.', author:'Hellen keller' ),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be felt'
        ' with the heart.', author:'Hellen keller'),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be '
        'felt with the heart.', author:'Hellen keller'),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be '
        'felt with the heart.', author:'Hellen keller'),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be '
        'felt with the heart.', author:'Hellen keller'),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be '
        'felt with the heart.', author:'Hellen keller'),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be '
        'felt with the heart.', author:'Hellen keller'),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be '
        'felt with the heart.', author:'Hellen keller'),
    Notes(text:'The best and most beautiful things in the world cannot be seen'
        ' or even touched - they must be '
        'felt with the heart.', author:'Hellen keller'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes',
        style: TextStyle(
          fontSize: 20,
          letterSpacing: 0.1,
          color: Colors.white,

        ),),
        centerTitle: true,
        titleSpacing: 10.0,
        elevation: 4.0,
        backgroundColor: Colors.redAccent[400],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: notes.map((note) =>  NotesCard(
            note : note,
            delete:  () {
              setState(() {
                notes.removeLast();
              });
            },
          )).toList(),
        
            ),
      ),
    );
  }
}


