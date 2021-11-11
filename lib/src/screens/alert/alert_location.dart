import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';
import 'package:watchpets/src/providers/position_controller.dart';

class LocationUser extends StatefulWidget {
  /// The LocationUser widget is the second step for send a alert.
  ///
  /// Show the location of a user through google maps.
  const LocationUser({Key? key}) : super(key: key);

  @override
  _LocationUserState createState() => _LocationUserState();
}

class _LocationUserState extends State<LocationUser> {
  late GoogleMapController _controller;
  Location _location = Location();

  void onMapCreated(GoogleMapController _contrll) {
    _controller = _contrll;
    _location.onLocationChanged.listen((event) {
      _contrll.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          zoom: 18.0, target: LatLng(event.latitude!, event.longitude!))));
    });
  }

  @override
  void dispose() {
    onMapCreated(_controller);
    super.dispose();
  }

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
        return GoogleMap(
          onMapCreated: onMapCreated,
          zoomControlsEnabled: false,
          compassEnabled: true,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          initialCameraPosition:
              CameraPosition(zoom: 18.0, target: controller.initialPosition),
        );
      }),
    );
  }
}
