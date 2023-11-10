import 'dart:ui';

import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_polar_hotspot.dart';
import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_potensi_bulanan.dart';
import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_potensi_harian.dart';
import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_sebaran_asap.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_app_bar.dart';

class CuacaKarhutla extends StatelessWidget{
  const CuacaKarhutla({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length:4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          settingButton: false,
          title: 'Cuaca Karhutla',
          tabbed: true,
          scrollable: true,
          size: 85, //comment this if not tabbed
          tabs: [
            Tab(text: "Polar Hotspot", height: 26,),
            Tab(text: "Sebaran Asap", height: 26,),
            Tab(text: "Potensi (Harian)", height: 26,),
            Tab(text: "Potensi (Bulanan)", height: 26,)
          ],
        ),
        body: const TabBarView(
          children: [
            CuacaKarhutlaPolarHotspot(),
            CuacaKarhutlaSebaranAsap(),
            CuacaKarhutlaPotensiHarian(),
            CuacaKarhutlaPotensiBulanan()
          ],
        ),
      ),
    );
  }
}