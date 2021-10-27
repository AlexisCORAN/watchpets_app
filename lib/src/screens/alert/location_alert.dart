import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationUser extends StatefulWidget {
  const LocationUser({Key? key}) : super(key: key);

  @override
  _LocationUserState createState() => _LocationUserState();
}

class _LocationUserState extends State<LocationUser> {
  var locationMessage = '';
  void getCurrentLocation() async {
    var location = await Location().getLocation();
    var lat = location.latitude;
    var long = location.longitude;
    print("$lat, $long");

    setState(() {
      locationMessage = "\nLatitude: $lat, \nLongitude: $long";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fondomap1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Get Location'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/timealert");
          },
          child: const Icon(Icons.arrow_forward),
          backgroundColor: const Color(0xff4cc443),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 46.0,
                color: Colors.green,
              ),
              SizedBox(height: 10.0),
              Text(
                "Get user Local",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Position $locationMessage"),
              MaterialButton(
                minWidth: 200.0,
                height: 45.0,
                color: Color(0xff4cc443),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text('Get current Location',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  getCurrentLocation();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
