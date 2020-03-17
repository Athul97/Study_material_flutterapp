import 'package:flutter/material.dart';


class Semester extends StatefulWidget {
  @override
  _SemesterState createState() => _SemesterState();
}

class _SemesterState extends State<Semester> {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green[100],

      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              top: 20.0,
              right: 30.0,
              bottom: 50.0,
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    iconSize: 25,
                    icon: Icon(Icons.arrow_back_ios,),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                MySem( title: 'Semester 1',),
                MySem( title: 'Semester 2',),
                MySem( title: 'Semester 3',),
                MySem( title: 'Semester 4',),
                MySem( title: 'Semester 5',),
                MySem( title: 'Semester 6',),
                MySem( title: 'Semester 7',),
                MySem( title: 'Semester 8',),

              ],

            ),
          ),
        ),
      ),
    );
  }
}

class MySem extends StatelessWidget {
  MySem({this.title,});
  final title;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
          height: 50.0,
          width:screenWidth * 0.75 ,
          //color: Colors.white,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white,
            ),
          child: Center(child: Text(title)),
    ),
        ),
      );
  }
}

