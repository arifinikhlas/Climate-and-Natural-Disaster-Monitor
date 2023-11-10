import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CuacaMaritimPanel extends StatefulWidget{

  final ScrollController controller;

  const CuacaMaritimPanel({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<CuacaMaritimPanel> createState() => _CuacaMaritimPanelState();
}

class _CuacaMaritimPanelState extends State<CuacaMaritimPanel> {
  final searchController = TextEditingController();
  static const allPerairans = [
    const Perairan(title: 'Samudera Indonesia'),
    const Perairan(title: 'Laut Jawa'),
    const Perairan(title: 'Laut Flores'),
    const Perairan(title: 'Laut Sawu'),
    const Perairan(title: 'Laut Timor'),
    const Perairan(title: 'Laut Sulawesi'),
    const Perairan(title: 'Laut Maluku'),
    const Perairan(title: 'Laut Seram'),
    const Perairan(title: 'Laut Banda'),
    const Perairan(title: 'Laut Arafura'),
    const Perairan(title: 'Laut Natuna'),
    const Perairan(title: 'Laut Natuna Utara'),
    const Perairan(title: 'Laut Halmahera'),
  ];
  List<Perairan> perairans = allPerairans;

  int _value = 1;

  int _activeWidget = 1;

  Widget _body(){
    switch (_activeWidget) {
      case 0:
        return
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 24),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 134,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Color(0xffDAE1DA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.all(4),
                        onPressed: (){setState(() {_activeWidget = 1;});},
                        icon: SvgPicture.asset('assets/icons_left_arrow.svg')
                    ),
                    Expanded(
                      child: Text('Samudera\nIndonesia',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            )
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.all(4),
                      onPressed: null,
                      icon: SvgPicture.asset(
                        'assets/icons_left_arrow.svg',
                        color: Colors.white.withOpacity(0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyRadioListTile<int>(
                        value: 1,
                        groupValue: _value,
                        leading: 'Hari Ini',
                        onChanged: (value) => setState(() => _value = value!),
                      ),
                      MyRadioListTile<int>(
                        value: 2,
                        groupValue: _value,
                        leading: 'Besok',
                        onChanged: (value) => setState(() => _value = value!),
                      ),
                      MyRadioListTile<int>(
                        value: 3,
                        groupValue: _value,
                        leading: 'Lusa',
                        onChanged: (value) => setState(() => _value = value!),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(36),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.blue,
                      border: Border.all(
                        color: Color(0xff5C7CAD),
                        width: 4,
                      )
                  ),
                  child: Column(
                    children: [
                      // Image.asset('assets/img_cuaca_penerbangan_hujan.png'),
                      SizedBox(height: 8,),
                      SvgPicture.asset(
                        'assets/icons_cuaca_penerbangan_hujan.svg',
                        width: 52,
                      ),
                      SizedBox(height: 10,),
                      Text('Hujan Sedang',
                        style: GoogleFonts.manrope(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            )
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 88,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_perairan_ombak.svg"),
                            SizedBox(height: 8,),
                            Text(
                              "2.50-4.0 m",
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff393939)
                                  )
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 88,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_penerbangan_kec_angin.svg"),
                            SizedBox(height: 8,),
                            Text(
                              "1-20 Knots",
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff393939)
                                  )
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 88,
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/icons_cuaca_penerbangan_arah_angin.svg"),
                            SizedBox(height: 8,),
                            Text(
                              "Angin Selatan",
                              style: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff393939)
                                  )
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons_warning.svg', width: 16,),
                      SizedBox(width: 12,),
                      Text('Waspada gelombang tinggi',
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff676767)
                              )
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),

          );

      default:
        return
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 24),
            child:
            Column(
              children: [
                Container(
                  width: 134,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Color(0xffDAE1DA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(height: 16,),
                Text('Wilayah Perairan',
                    style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        )
                    )
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xffECECEC),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: SvgPicture.asset('assets/icons_search.svg'),
                        width: 21,
                        height: 21,
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: TextField(
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )
                          ),
                          controller: searchController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Cari Wilayah Perairan',
                            hintStyle: GoogleFonts.manrope(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff898E88),
                                )
                            ),
                          ),
                          onChanged: searchPerairan,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: perairans.length,
                      controller: widget.controller,
                      itemBuilder: (context, index){
                        final perairan = perairans[index];

                        return ListTile(
                          onTap: (){setState(() {_activeWidget = 0;});},
                          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                  child: Text(
                                    perairan.title,
                                    style: GoogleFonts.manrope(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        )
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: SvgPicture.asset('assets/icons_right_arrow.svg'),
                              )
                            ],
                          ),
                          // onTap: (){return SecondPanel()},
                        );
                      }
                  ),
                ),
              ],
            ),

          );


    }
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: _body(),
    );
  }

  void searchPerairan(String query){
    final suggestions = allPerairans.where((perairan) {
      final perairanTitle = perairan.title.toLowerCase();
      final input = query.toLowerCase();

      return perairanTitle.contains(input);
    }).toList();

    setState(() => perairans = suggestions);
  }
}

class Perairan{
  final String title;

  const Perairan({
    required this.title
  });
}

class SecondPanel extends StatefulWidget {
  const SecondPanel({Key? key}) : super(key: key);

  @override
  State<SecondPanel> createState() => _SecondPanelState();
}

class _SecondPanelState extends State<SecondPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('test'),);
  }
}

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _customRadioButton,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff2B7CB9) : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
          leading,
          style: GoogleFonts.manrope(
              textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: isSelected ? Colors.white : Color(0xff393939)
              )
          )
      ),
    );
  }
}