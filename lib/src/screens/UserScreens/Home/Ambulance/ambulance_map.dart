import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapScreen extends StatefulWidget {
  const mapScreen({Key? key}) : super(key: key);

  @override
  State<mapScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<mapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(5.116833, -1.293324),
    zoom: 11.5,
  );
  // GoogleMapController _googleMapController;
  // @override
  // void dispose() {
  //   _googleMapController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return GoogleMap(
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: _initialCameraPosition,
      // onMapCreated: (controller) => _googleMapController = controller,

      // onPressed: () => _googleMapController.animateCamera(
      //   CameraUpdate.newCameraPosition(_initialCameraPosition),
      //
    );
    // child: const Icon(Icons.center_focus_strong),
  }
}
