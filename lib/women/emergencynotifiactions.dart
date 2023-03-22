import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart' as loc;

class EmergencyNotifications extends StatefulWidget {
  @override
  _EmergencyNotificationsState createState() => _EmergencyNotificationsState();
}

class _EmergencyNotificationsState extends State<EmergencyNotifications> {
  String _currentCity = '';
  String _currentColony = '';
  double _latitude = 0.0;
  double _longitude = 0.0;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    final location = loc.Location();
    try {
      final _locationData = await location.getLocation();
      await _getAddressFromLatLng(_locationData);
    } catch (e) {
      print('Could not get location: $e');
    }
  }

  Future<void> _getAddressFromLatLng(loc.LocationData _locationData) async {
    final placemarks = await GeocodingPlatform.instance
        .placemarkFromCoordinates(
            _locationData.latitude!, _locationData.longitude!);

    setState(() {
      _currentCity = placemarks[0].locality!;
      _currentColony = placemarks[0].subLocality!;
      _latitude = _locationData.latitude!;
      _longitude = _locationData.longitude!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orange.shade500,
        ),
        title: Text(
          "Emergency Notifications",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Current City: $_currentCity'),
            SizedBox(height: 16),
            Text('Current Colony: $_currentColony'),
            SizedBox(height: 16),
            Text('Latitude: $_latitude'),
            SizedBox(height: 16),
            Text('Longitude: $_longitude'),
          ],
        ),
      ),
    );
  }
}
