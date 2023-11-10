import 'dart:ui';

import 'package:bmkg/gempabumi/gempabumi_m5.dart';
import 'package:bmkg/gempabumi/gempabumi_terkini.dart';
import 'package:flutter/material.dart';

import '../../custom_app_bar.dart';

class GempaBumiMain extends StatelessWidget{
  const GempaBumiMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length:5,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          settingButton: true,
          title: 'Gempabumi',
          tabbed: true,
          scrollable: true,
          size: 85, //comment this if not tabbed
          tabs: [
            Tab(text: "Terkini", height: 26,),
            Tab(text: "M>5", height: 26,),
            Tab(text: "Dirasakan", height: 26,),
            Tab(text: "Real-Time", height: 26,),
            Tab(text: "Tsunami", height: 26,),
          ],
        ),
        body: const TabBarView(
          children: [
            GempaBumiTerkini(),
            GempaBumiM5(),
            GempaBumiM5(),
            GempaBumiM5(),
            GempaBumiM5(),
          ],
        ),
      ),
    );
  }
}