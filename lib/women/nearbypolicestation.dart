// // import 'package:flutter/material.dart';
// // import 'package:geocoding/geocoding.dart';
// // import 'package:location/location.dart' as loc;

// // class EmergencyNotifications extends StatefulWidget {
// //   @override
// //   _EmergencyNotificationsState createState() => _EmergencyNotificationsState();
// // }

// // class _EmergencyNotificationsState extends State<EmergencyNotifications> {
// //   List<Placemark> _policeStations = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _getPoliceStations();
// //   }

// // Future<void> _getPoliceStations() async {
// //   final location = await loc.Location().getLocation();
// //   final placemarks = await placemarkFromCoordinates(
// //     location.latitude!,
// //     location.longitude!,
// //   );
// //   final address = placemarks.first;
// //   final lat = location.latitude!;
// //   final lng = location.longitude!;

// //   final nearby = await placemarkFromCoordinates(lat, lng, localeIdentifier: 'en_US');
// //   final city = nearby.first.locality?.toLowerCase() ?? '';

// //   final policeStations = await placemarkFromCoordinates(lat, lng,
// //     localeIdentifier: 'en_US',
// //     // name: 'Police Station',
// //   );

// //   setState(() {
// //     _policeStations = policeStations;
// //   });
// // }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Nearby Police Stations'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: _policeStations.length,
// //         itemBuilder: (context, index) {
// //           final station = _policeStations[index];
// //           return ListTile(
// //             title: Text(station.name ?? ''),
// //             subtitle: Text(station.thoroughfare ?? ''),
// //             trailing: Icon(Icons.arrow_forward),
// //             onTap: () {
// //               // Handle tap on police station
// //             },
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class PoliceStation {
//   final String name;
//   final double latitude;
//   final double longitude;
//   final double distance;

//   PoliceStation({required this.name, required this.latitude, required this.longitude, required this.distance});
// }

// class NearbyPoliceStations extends StatefulWidget {
//   @override
//   _NearbyPoliceStationsState createState() => _NearbyPoliceStationsState();
// }

// class _NearbyPoliceStationsState extends State<NearbyPoliceStations> {
//   late Position _currentPosition;
//   List<PoliceStation> _policeStations = [];

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   void _getCurrentLocation() async {
//     final position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     setState(() {
//       _currentPosition = position;
//       _getNearbyPoliceStations();
//     });
//   }

//   void _getNearbyPoliceStations() async {
//     const double radius = 10000; // 10 km
//     final nearbyPlaces = await Geolocator.findCoordinatesWithin(
//         _currentPosition.latitude, _currentPosition.longitude, radius);

//     for (final place in nearbyPlaces) {
//       final distance = await Geolocator.distanceBetween(
//           _currentPosition.latitude,
//           _currentPosition.longitude,
//           place.latitude,
//           place.longitude);

//       _policeStations.add(PoliceStation(
//           name: 'Police Station',
//           latitude: place.latitude,
//           longitude: place.longitude,
//           distance: distance));
//     }

//     _policeStations.sort((a, b) => a.distance.compareTo(b.distance));

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Nearby Police Stations'),
//       ),
//       body: _currentPosition != null
//           ? ListView.builder(
//               itemCount: _policeStations.length,
//               itemBuilder: (context, index) {
//                 final policeStation = _policeStations[index];
//                 return ListTile(
//                   title: Text(policeStation.name),
//                   subtitle: Text('${policeStation.distance} meters away'),
//                   trailing: Icon(Icons.arrow_forward),
//                   onTap: () {
//                     // Navigate to police station location
//                   },
//                 );
//               },
//             )
//           : Center(
//               child: CircularProgressIndicator(),
//             ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

// class PoliceStation {
//   final String name;
//   final double latitude;
//   final double longitude;
//   final double distance;

//   PoliceStation({required this.name, required this.latitude, required this.longitude, required this.distance});
// }

// class NearbyPoliceStations extends StatefulWidget {
//   @override
//   _NearbyPoliceStationsState createState() => _NearbyPoliceStationsState();
// }

// class _NearbyPoliceStationsState extends State<NearbyPoliceStations> {
//   late Position _currentPosition;
//   List<PoliceStation> _policeStations = [];

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   void _getCurrentLocation() async {
//     final position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     setState(() {
//       _currentPosition = position;
//       _getNearbyPoliceStations();
//     });
//   }

//   void _getNearbyPoliceStations() async {
//     const double radius = 10000; // 10 km
//     final addresses = await placemarkFromCoordinates(
//         _currentPosition.latitude, _currentPosition.longitude);
//     final address = addresses.first;

//     final nearbyPlaces = await locationFromAddress('${address.locality}, ${address.administrativeArea}');
//     final userLocation = Location(_currentPosition.latitude, _currentPosition.longitude);
    
//     for (final place in nearbyPlaces) {
//       final distance = Geolocator.distanceBetween(
//           userLocation.latitude,
//           userLocation.longitude,
//           place.latitude,
//           place.longitude);

//       _policeStations.add(PoliceStation(
//           name: 'Police Station',
//           latitude: place.latitude,
//           longitude: place.longitude,
//           distance: distance));
//     }

//     _policeStations.sort((a, b) => a.distance.compareTo(b.distance));

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Nearby Police Stations'),
//       ),
//       body: _currentPosition != null
//           ? ListView.builder(
//               itemCount: _policeStations.length,
//               itemBuilder: (context, index) {
//                 final policeStation = _policeStations[index];
//                 return ListTile(
//                   title: Text(policeStation.name),
//                   subtitle: Text('${policeStation.distance} meters away'),
//                   trailing: Icon(Icons.arrow_forward),
//                   onTap: () {
//                     // Navigate to police station location
//                   },
//                 );
//               },
//             )
//           : Center(
//               child: CircularProgressIndicator(),
//             ),
//     );
//   }
// }