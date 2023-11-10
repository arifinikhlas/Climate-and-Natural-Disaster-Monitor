import 'dart:async';
import 'dart:ui';

import 'package:bmkg/cuaca/cuaca_penerbangan/cuaca_penerbangan_panel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../custom_app_bar.dart';

class CuacaPenerbangan extends StatefulWidget{

  const CuacaPenerbangan({
    Key? key,
  }) : super(key: key);

  @override
  State<CuacaPenerbangan> createState() => _CuacaPenerbanganState();
}

class _CuacaPenerbanganState extends State<CuacaPenerbangan> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.126859737184229, 106.65439752861613),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = 164.0;
    final panelHeightOpened = 468.0;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          settingButton: false,
          title: 'Cuaca Penerbangan',
          tabbed: false,
          scrollable: true,
          // size: 85, //comment this if not tabbed
          tabs: [
            Tab(text: "Polar Hotspot", height: 26,),
            Tab(text: "Sebaran Asap", height: 26,),
            Tab(text: "Potensi (Harian)", height: 26,),
            Tab(text: "Potensi (Bulanan)", height: 26,)
          ],
        ),
        body: SlidingUpPanel(
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
            // width: MediaQuery.of(context).size.width,
            // height: 172,
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
                  position: const LatLng(-6.126859737184229, 106.65439752861613),
                ),
              },
            ),
          ),
          // Container(
          //   margin: EdgeInsets.only(top: window.viewPadding.top+18),
          //   child: Image.asset(
          //       'assets/img_maps.png',
          //       width: MediaQuery.of(context).size.width,
          //       fit: BoxFit.fitWidth,
          //   ),
          // ),

          panelBuilder: (controller) => CuacaPenerbanganPanel(
              controller: controller,
          ),
        )
    );
  }
}