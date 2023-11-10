import 'package:bmkg/cuaca/peringatan_dini_cuaca/peringatan_dini_cuaca_list.dart';
import 'package:flutter/material.dart';

import '../../custom_app_bar.dart';

class PeringatanDiniCuaca extends StatelessWidget{
  const PeringatanDiniCuaca({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: const PeringatanDiniCuacaList()
    );
  }
}