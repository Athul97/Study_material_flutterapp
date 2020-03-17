import 'package:flutter/material.dart';
import 'package:loginpage/screens/sem.dart';


class Departments extends StatefulWidget {
  @override
  _DepartmentsState createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('GripYou'),
        backgroundColor: Colors.green[300],
      ),
      backgroundColor: Colors.green[100],

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[

        UserAccountsDrawerHeader(
          accountName: new Text('John', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
          accountEmail: new Text('john@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB8Pd7TrT49QC6SPLDVoz8QjU1q0VoLhnZb9E5bc-vqkKJgsxV')
          ),
          decoration: new BoxDecoration( color: Colors.green[500]),
        ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
          leading: Icon(Icons.share),
          title: Text('Share'),
        ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Feedback'),
            ),
          ],
        ),
      ),

      body:Container(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(crossAxisCount: 2,
          children: <Widget>[
            MyDept( title: 'IT', imagepath:'assets/logos/computer.png',),
            MyDept(title: 'PT', imagepath: 'assets/logos/print.png',),
            MyDept( title: 'EC', imagepath:'assets/logos/EC.png',),
            MyDept(title: 'MECH', imagepath: 'assets/logos/mech.jpg'),
            MyDept(title: 'EEE', imagepath: 'assets/logos/electrical.png'),
            MyDept(title: 'Syllabus', imagepath: 'assets/logos/syllabus.jpg'),

          ],
          ),
        ),

      ),
    );
  }
}


class MyDept extends StatelessWidget {
  MyDept({this.title, this.imagepath});

  final title;
  final imagepath;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context,
              PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder:(context, _, __) => Semester()
              )
          );
        },
        splashColor: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(imagepath,
//                'assets/logos/book.png',
                width: 100.0,
                height: 100.0,
              ),
              Text( title,
                //"IT",
                style: TextStyle(fontSize: 18.0),),
            ],
          ),
        ),
      ),
    );
  }
}
