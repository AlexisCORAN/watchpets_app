import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class PositionController with ChangeNotifier {
  var locationMessage = '';
  LatLng _initialssCameraPosition = LatLng(0.0, 0.0);
  LatLng get initialPosition => _initialssCameraPosition;
  late GoogleMapController _controller;
  Location _location = Location();

  Future<void> getCurrentLocation() async {
    var location = await Location().getLocation();
    var latitude = location.latitude;
    var longitude = location.longitude;
    print("$latitude, $longitude");

    locationMessage = "\nLatitude: $latitude, \nLongitude: $longitude";

    notifyListeners();
  }

  void onMapCreated(GoogleMapController _contrll) {
    _controller = _contrll;
    _location.onLocationChanged.listen((event) {
      _contrll.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(event.latitude!, event.longitude!))));
    });
    notifyListeners();
  }
}
