import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_app_bar.dart';

class PeringatanDiniCuacaDetail extends StatelessWidget{
  const PeringatanDiniCuacaDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
        settingButton: false,
        title: 'Peringatan Dini Cuaca',
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
              color: Colors.white,
              child:
              ListView(
                // padding: EdgeInsets.zero,
                children: [

                  SizedBox(height: 40,),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Flexible(
                                child: Text('Peringatan Dini Cuaca Bengkulu',
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
                                        )
                                    ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(height: 4,),
                            IconButton(
                                onPressed: (){},
                                icon: SvgPicture.asset("assets/icons_peringatan_dini_cuaca_share.svg")
                            )
                          ],
                        ),

                        SizedBox(height: 12,),

                        Text('Berlaku sampai 2023-06-19 01:00:00 WIB',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff898E88)
                              )
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24,),

                  Container(//item
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.07),
                            spreadRadius: 0,
                            blurRadius: 12,
                          )
                        ]
                    ),
                    child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset("assets/img_peringatan_dini_cuaca_detail.png",
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      ),
                  ),

                  SizedBox(height: 24,),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child:
                      Row(
                        children: [
                          Flexible(
                            child: Text('UPDATE Peringatan Dini Cuaca Wilayah Bengkulu tgl 18 Juni 2023 pkl. 20:50 WIB berpotensi terjadi hujan dengan intensitas sedang hingga lebat yang dapat disertai kilat/petir dan angin kencang pada pkl 21:00 WIB di Kabupaten Bengkulu Selatan: Air Nipis, Kabupaten Kaur: Padang Guci Hulu\n \n Dan dapat meluas ke wilayah Kabupaten Bengkulu Selatan: Kedurang, Seginim, Pino, Manna, Kota Manna, Pino Raya, Kedurang Ilir, Ulu Manna, Bunga Mas, Kabupaten Kaur: Kinal, Tanjung Kemuning, Kaur Utara, Kaur Tengah, Kaur Selatan, Maje, Nasal, Semidang Gumay, Kelam Tengah, Luas, Muara Sahung, Tetap, Lungkang Kule, Padang Guci Hilir, Kabupaten Seluma: Semidang Alas, Semidang Alas Maras \n \nKondisi ini diperkirakan masih dapat berlangsung hingga pkl 01:00 WIB \n\nPrakirawan BMKG - Bengkulu\nhttps://nowcasting.bmkg.go.id',
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    height: 1.7
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),

                  SizedBox(height: 40,),
                ],
              )
          )
      ),
    );
  }
}