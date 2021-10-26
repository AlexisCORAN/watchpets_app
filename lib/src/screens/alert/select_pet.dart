
/**
import 'package:flutter/material.dart';
import 'package:watchpets/pages/alert/location.dart';

class SelecMas extends StatelessWidget {
  const SelecMas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckBox(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckBoxWidget();
  }
}

class CheckBoxWidget extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Send Alert')),
        backgroundColor: Color(0xFF052035),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LocationApp()));
          },
          child: const Icon(Icons.arrow_forward),
          backgroundColor: Color(0xff4cc443),
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 280,
                  height: 280,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      //position container
                      Positioned(
                        right: 0.40,
                        top: 0.2,
                        child: Text(
                          "Pet 1",
                        ),
                      ),
                    ],
                  )),
              Container(
                  width: 280,
                  height: 280,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      //position container
                      Positioned(
                        right: 0.40,
                        top: 0.2,
                        child: Text(
                          "Pet 1",
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
*/