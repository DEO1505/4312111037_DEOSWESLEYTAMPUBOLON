import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deo Swesley Tampubolon_Praktikum Minggu 3 PBB')
      ),
      body:Text('Ini Text',
      style: TextStyle(
        color: Colors.blue,
        backgroundColor: Colors.pink,
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold
      ),)
    );
  }
}

class MyHomePage3 extends StatelessWidget {
  const MyHomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deo Swesley Tampubolon_Praktikum Minggu 3 PBB')
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.access_alarm),
                Text('Alarm')
              ],
            ),
            Column(
              children: [
                Icon(Icons.phone),
                Text('Phone')
              ],
            ),
            Column(
              children: [
                Icon(Icons.book),
                Text('Book')
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage4 extends StatelessWidget {
  const MyHomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deo Swesley Tampubolon_Praktikum Minggu 3 PBB')
      ),
      body:Container(
        padding: EdgeInsets.all(32.0),
        margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.purple),
          child: Text('Hai',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0),
          )
      ),
    );
  }
}

class MyHomePage5 extends StatelessWidget {
  const MyHomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deo Swesley Tampubolon_Praktikum Minggu 3 PBB')
      ),
      body: Column(
        children: [
          Text("A",
          style: TextStyle(fontSize: 30.0),),
          SizedBox(height: 20.0,),
          Text("B",
          style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}



class MyHomePage6 extends StatelessWidget {
  const MyHomePage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deo Swesley Tampubolon_Praktikum Minggu 3 PBB')
      ),
      body: Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber
          ),
          child: Text('ElevatedButton',
          style: TextStyle(
            color: Colors.black),
          ),
          onPressed: () {},
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.lime
          ),
          child: Text('MaterialButton',
          style: TextStyle(
            color: Colors.black),
          ),
          onPressed: () {},
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.lightGreenAccent
          ),
          child: Text('FlatButton',
          style: TextStyle(
            color: Colors.black),
          ),
          onPressed: () {},
          ),
        ]
      ),
    );
  }
}


class MyHomePage7 extends StatelessWidget {
  const MyHomePage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deo Swesley Tampubolon_Praktikum Minggu 3 PBB')
      ),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          child: Text("Alert Dialog"),
          textColor: Colors.white,
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return GiffyDialog.image (
                  Image.network('assets/img/google-jacket.gif',
                   height: 200,
                  fit: BoxFit.cover,
                  ),
                  title: Text('Men Wearing Jakets',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w100),
                  ),
                  content: Text('This is a men wearning jakets',
                  textAlign: TextAlign.center,
                  ), 
          actions: [
         TextButton(
           onPressed: () => Navigator.pop (context, 'CANCEL'),
           child: const Text('CANCEL',
           textAlign: TextAlign.center,
           ),
         ),
         TextButton(
           onPressed: () => Navigator.pop(context,'OK'),
           child: const Text('OK',
           textAlign: TextAlign.center,
           ),
                    ),
                  ]
                );
              } 
            );
          },
        ),
      ),
    );
  }
}