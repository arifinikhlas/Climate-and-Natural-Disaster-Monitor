import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../custom_app_bar.dart';
import 'iklim_panel.dart';

class Iklim extends StatefulWidget{

  const Iklim({
    Key? key,
  }) : super(key: key);

  @override
  State<Iklim> createState() => _IklimState();
}

class _IklimState extends State<Iklim> {
  GlobalKey btnKey = GlobalKey();

  String type = 'Prakiraan Curah Hujan Bulan Juli 2023';

  int _activeWidget = 1;

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-0.9429355954085459, 110.94957631434974),
    zoom: 6,
  );

  Widget Legends(){
    switch (_activeWidget) {
      case 0:
        return InkWell(
          onTap: (){setState(() {_activeWidget = 1;});},
          child: Container(
            width: 280,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 12,
                  ),
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RadioListTile(
                  title: Text(
                      "Prakiraan Curah Hujan Bulan Juli 2023",
                      style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          )
                      )
                  ),
                  value: "Prakiraan Curah Hujan Bulan Juli 2023",
                  groupValue: type,
                  onChanged: (value){
                    setState(() {
                      type = value.toString();
                      _activeWidget = 1;
                    });
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  selectedTileColor: Color(0xff2B7CB9),
                  activeColor: Color(0xff2B7CB9),
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                RadioListTile(
                  title: Text(
                      "Analisis Curah Hujan Bulan Mei 2023",
                      style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          )
                      )
                  ),
                  value: "Analisis Curah Hujan Bulan Mei 2023",
                  groupValue: type,
                  onChanged: (value){
                    setState(() {
                      type = value.toString();
                      _activeWidget = 1;
                    });
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  selectedTileColor: Color(0xff2B7CB9),
                  activeColor: Color(0xff2B7CB9),
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                RadioListTile(
                  title: Text(
                      "Monitoring Hari Tanpa Hujan Dasarian | Juni 2023",
                      style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          )
                      )
                  ),
                  value: "Monitoring Hari Tanpa Hujan Dasarian | Juni 2023",
                  groupValue: type,
                  onChanged: (value){
                    setState(() {
                      type = value.toString();
                      _activeWidget = 1;
                    });
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  selectedTileColor: Color(0xff2B7CB9),
                  activeColor: Color(0xff2B7CB9),
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ],
            ),
          ),
        );

      default:
        return InkWell(
          onTap: (){setState(() {_activeWidget = 0;});},
          child: Container(
            child: SvgPicture.asset('assets/icons_stack.svg'),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.white,
                border: Border.all(color: Color(0xff898E88)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 12,
                  ),
                ]
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = 164.0;
    final panelHeightOpened = 320.0;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          settingButton: false,
          title: 'Iklim',
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
          body: Stack(
            children: [
              // Container(
              //   margin: EdgeInsets.only(top: window.viewPadding.top+18),
              //   child: Image.asset(
              //     'assets/img_maps.png',
              //     width: MediaQuery.of(context).size.width,
              //     fit: BoxFit.fitWidth,
              //   ),
              // ),
              Container(
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
                      position: const LatLng(-0.9429355954085459, 110.94957631434974),
                    ),
                  },
                ),
              ),
              Positioned(
                right: 16,
                top: 100,
                child: Legends(),
              ),
            ],
          ),
          panelBuilder: (controller) => IklimPanel(
            controller: controller,
          ),
        )
    );
  }
}

