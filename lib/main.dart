import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Hello(),
));

class Hello extends StatefulWidget {

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  var str = 'Radhey';

  void changename(){
    setState(() {
      str ='Viishu';  
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Hello Change"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$str"),
            RaisedButton(
              onPressed: changename,
              child: Text("Button"),
            ),
          ],
        ),
      ),
    );
  }
}
