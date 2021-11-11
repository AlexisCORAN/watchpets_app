import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class PositionController with ChangeNotifier {
  /// The PositionController class provides the location  of the User and
  ///
  /// Show the location through the google maps API.

  final LatLng _initialCameraPosition = const LatLng(0.0, 0.0);

  /// Getter variable
  LatLng get initialPosition => _initialCameraPosition;
  late GoogleMapController _controller;

  Location _location = Location();

  Future<LatLng> getCurrentLocation() async {
    LocationData location = await _location.getLocation();
    double? latitude = location.latitude!;
    double? longitude = location.longitude!;
    print("$latitude, $longitude");

    LatLng position = LatLng(latitude, longitude);
    notifyListeners();
    return position;
  }

  void onMapCreated() {
    GoogleMapController _contrll = _controller;
    _location.onLocationChanged.listen((event) {
      _contrll.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          zoom: 18.0, target: LatLng(event.latitude!, event.longitude!))));
    });
    notifyListeners();
  }
}
