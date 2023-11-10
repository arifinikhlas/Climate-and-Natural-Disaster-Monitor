import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../custom_app_bar.dart';
import 'cuaca_maritim_panel.dart';

class CuacaMaritim extends StatefulWidget{

  const CuacaMaritim({
    Key? key,
  }) : super(key: key);

  @override
  State<CuacaMaritim> createState() => _CuacaMaritimState();
}

class _CuacaMaritimState extends State<CuacaMaritim> {
  GlobalKey btnKey = GlobalKey();

  int _activeWidget = 1;

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-5.948006, 100.532251),
    zoom: 6,
  );

  // onTap: (){setState(() {_activeWidget = 0;});},

  Widget Legends(){
    switch (_activeWidget) {
      case 0:
        return InkWell(
          onTap: (){setState(() {_activeWidget = 1;});},
          child: Container(
            width: 222,
            padding: EdgeInsets.all(16),
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
                Text(
                    'Gelombang Laut (meter)',
                    style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        )
                    )
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff007CEF),
                          shape: BoxShape.circle
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 16,),
                      Flexible(child:
                        Text(
                          'Tenang (0.1 - 0.4)',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff42D100),
                            shape: BoxShape.circle
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 16,),
                      Flexible(child:
                      Text(
                          'Rendah (0.5 - 1.24)',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFAFF00),
                            shape: BoxShape.circle
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 16,),
                      Flexible(child:
                      Text(
                          'Sedang (1.25 - 2.4)',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFF9900),
                            shape: BoxShape.circle
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 16,),
                      Flexible(child:
                      Text(
                          'Tinggi (2.5 - 4)',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFF1F00),
                            shape: BoxShape.circle
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 16,),
                      Flexible(child:
                      Text(
                          'Sangat Tinggi (4 - 6)',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFF00E5),
                            shape: BoxShape.circle
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 16,),
                      Flexible(child:
                      Text(
                          'Ekstrim (6 - 9)',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                        ),
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(width: 16,),
                      Flexible(child:
                      Text(
                          'Sangat Ekstrim (9 - 14)',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                      )
                    ],
                  ),
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
    final panelHeightOpened = 468.0;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          settingButton: false,
          title: 'Cuaca Maritim',
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
                      position: const LatLng(-5.948006, 100.532251),
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
          panelBuilder: (controller) => CuacaMaritimPanel(
            controller: controller,
          ),
        )
    );
  }
}

