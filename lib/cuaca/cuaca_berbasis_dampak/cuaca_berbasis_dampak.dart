import 'dart:ui';

import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_polar_hotspot.dart';
import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_potensi_bulanan.dart';
import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_potensi_harian.dart';
import 'package:bmkg/cuaca/cuaca_karhutla/cuaca_karhutla_sebaran_asap.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_app_bar.dart';
import 'cuaca_berbasis_dampak_list.dart';

class CuacaBerbasisDampak extends StatelessWidget{
  const CuacaBerbasisDampak({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length:3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          settingButton: false,
          title: 'Cuaca Berbasis Dampak',
          tabbed: true,
          scrollable: false,
          size: 85, //comment this if not tabbed
          tabs: [
            Tab(text: "Waspada", height: 26,),
            Tab(text: "Siaga", height: 26,),
            Tab(text: "Bahaya", height: 26,),
          ],
        ),
        body: const TabBarView(
          children: [
            CuacaBerbasisDampakList(),
            CuacaBerbasisDampakList(),
            CuacaBerbasisDampakList(),
          ],
        ),
      ),
    );
  }
}