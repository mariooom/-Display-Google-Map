import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late GoogleMapController mapController;

  //Cairo coordinates
  final LatLng cairoCoordinates = LatLng(30.0444, 31.2357);

  final Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    _addMarker();
  }

  void _addMarker() {
    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId('cairo'),
          position: cairoCoordinates,
          infoWindow: InfoWindow(title: 'Cairo, Egypt'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: cairoCoordinates,
          zoom: 12.0,
        ),
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
      ),
    );
  }
}
