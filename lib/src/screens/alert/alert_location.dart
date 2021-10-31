import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:watchpets/src/providers/position_controller.dart';

class LocationUser extends StatefulWidget {
  const LocationUser({Key? key}) : super(key: key);

  @override
  _LocationUserState createState() => _LocationUserState();
}

class _LocationUserState extends State<LocationUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Location'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/timealert");
        },
        child: const Icon(Icons.arrow_forward),
      ),
      body: Consumer<PositionController>(builder: (_, controller, __) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(controller.locationMessage),
              MaterialButton(
                minWidth: 200.0,
                height: 45.0,
                color: Color(0xff4cc443),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: const Text('Get current Location',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  controller.getCurrentLocation();
                },
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                height: 350.0,
                width: 300.0,
                child: const GoogleMap(
                  initialCameraPosition: CameraPosition(
                      zoom: 18.0, target: LatLng(-11.9911438, -77.115302)),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
