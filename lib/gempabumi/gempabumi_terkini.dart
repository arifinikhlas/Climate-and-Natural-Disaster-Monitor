import 'dart:async';
import 'dart:ui';

import 'package:bmkg/cuaca/cuaca_penerbangan/cuaca_penerbangan_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../custom_app_bar.dart';
import 'gempabumi_terkini_panel.dart';

class GempaBumiTerkini extends StatefulWidget {

  const GempaBumiTerkini({
    Key? key,
  }) : super(key: key);

  @override
  State<GempaBumiTerkini> createState() => _GempaBumiTerkiniState();
}

class _GempaBumiTerkiniState extends State<GempaBumiTerkini> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-5.948006, 100.532251),
    zoom: 6,
  );

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = 168.0;
    final panelHeightOpened = 452.0;
    return SlidingUpPanel(
      color: Colors.white.withOpacity(0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0),
        )
      ],
      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      margin: EdgeInsets.symmetric(horizontal: 16),
      minHeight: panelHeightClosed,
      maxHeight: panelHeightOpened,
      body: Container(
        // margin: EdgeInsets.only(top: window.viewPadding.top+24),
        margin: EdgeInsets.only(top: window.viewPadding.top+18),
        child:
        // Image.asset(
        //   'assets/img_maps.png',
        //   width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.fitWidth,
        // ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 172,
          child: GoogleMap(
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            mapType: MapType.terrain,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: {
              Marker(
                markerId: const MarkerId("marker2"),
                position: const LatLng(-5.948006, 100.532251),
              ),
            },
          ),
        ),
      ),
      panelBuilder: (controller) =>
          GempaBumiTerkiniPanel(
            controller: controller,
          ),
    );
  }
}