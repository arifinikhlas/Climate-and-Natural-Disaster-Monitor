import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_app_bar.dart';

class PotensiAwanCB extends StatelessWidget{
  const PotensiAwanCB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        settingButton: false,
        title: 'Potensi Awan\nCumolonimbus',
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
      body: Container(
        // margin: EdgeInsets.only(top: window.viewPadding.top),
        child:
        Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xffFCFCFC),
            child:
            ListView(
              // padding: EdgeInsets.zero,
              children: [

                SizedBox(height: 20,),

                Container(//polar hotspot
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 12,
                        )
                      ]
                  ),
                  child:
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top:20, left: 16,right: 16),
                          child: Row(
                            children: [
                              Container(
                                child: Flexible(
                                  child: Text('Potensi Pertumbuhan Awan CB di Wilayah Udara Indonesia',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text('Berlaku 20 Juni 2023 - 26 Juni 2023',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff898E88)
                                  )
                              )
                          ),
                        ),
                        SizedBox(height: 24,),
                        Container(
                            padding: const EdgeInsets.only(left: 16,right: 16),
                            width: MediaQuery.of(context).size.width,
                            child:
                            Image.asset("assets/img_potensi_awan_cb.png",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover
                            )
                        ),
                        SizedBox(height: 16,),
                      ]
                  ),
                ),

                SizedBox(height: 16,),

                Container(//polar hotspot
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 12,
                        )
                      ]
                  ),
                  child:
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top:20, left: 16,right: 16),
                          child: Row(
                            children: [
                              Container(
                                child: Flexible(
                                  child: Text('Awan Cumulonimbus dengan persentase cakupan spasial maksimum antara 50-75% (OCNL /Occasional) selama 7 hari kedepan diprediksi terjadi di:',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24,),
                        Container(
                          padding: const EdgeInsets.only(left: 16,right: 16),
                          child: Row(
                            children: [
                              Container(
                                child: Flexible(
                                  child: Text('Aceh, Riau, Sumatera Barat, Jambi, Sumatera Selatan, Samudra Hindia barat daya Lampung, Banten, Perairan utara Jakarta, Jawa Tengah, Kalimantan Barat, Kalimantan Utara, Kalimantan Timur, NTB, NTT, Laut Sulawesi, Sulawesi Utara, Gorontalo, Sulawesi Tengah, Sulawesi Barat, Sulawesi Tenggara, Sulawesi Selatan, Laut Maluku, Maluku Utara, Maluku, Laut Halmahera, Laut Seram, Papua Barat, Teluk Cenderawasih, Papua, dan Samudera Pasifik utara Halmahera hingga Papua.',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                              height: 1.5
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16,),
                      ]
                  ),
                ),

                SizedBox(height: 16,),

                Container(//polar hotspot
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 12,
                        )
                      ]
                  ),
                  child:
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top:20, left: 16,right: 16),
                          child: Row(
                            children: [
                              Container(
                                child: Flexible(
                                  child: Text('Awan Cumulonimbus dengan persentase cakupan spasial 375% (FRG / Frequent) selama 7 hari kedepan diprediksi terjadi di:',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24,),
                        Container(
                          padding: const EdgeInsets.only(left: 16,right: 16),
                          child: Row(
                            children: [
                              Container(
                                child: Flexible(
                                  child: Text('Papua',
                                      style: GoogleFonts.manrope(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                              height: 1.5
                                          )
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16,),
                      ]
                  ),
                ),

                SizedBox(height: 20,),

              ],
            )
        )
      ),
    );
  }
}