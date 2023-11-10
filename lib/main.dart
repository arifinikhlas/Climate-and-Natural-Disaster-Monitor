import 'package:bmkg/beranda.dart';
import 'package:bmkg/cuaca_main.dart';
import 'package:bmkg/kualitas_udara_main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'gempabumi_main.dart';
import 'api/firebase_api.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info BMKG',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        unselectedWidgetColor: Color(0xff898E88)
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  Widget currentScreen = Beranda();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
        elevation: 1,
        surfaceTintColor: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 36,
                padding: EdgeInsets.zero,
                onPressed: (){
                  setState(() {
                    _selectedIndex = 0;
                    currentScreen = Beranda();
                  });
                },
                child: SizedBox(
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        _selectedIndex == 0 ? 'assets/icons_beranda_active.svg' : 'assets/icons_beranda.svg',
                      ),
                      SizedBox(height: 6,),
                      Text(
                          "Beranda",
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 36,
                onPressed: (){
                  setState(() {
                    _selectedIndex = 1;
                    currentScreen = CuacaMain();
                  });
                },
                child: SizedBox(
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        _selectedIndex == 1 ? 'assets/icons_cuaca_active.svg' : 'assets/icons_cuaca.svg',
                      ),
                      SizedBox(height: 6,),
                      Text(
                          "Cuaca",
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 36,
                onPressed: (){},
                child: SizedBox(
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons_mic.svg',
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 36,
                onPressed: (){
                  setState(() {
                    _selectedIndex = 2;
                    currentScreen = GempaBumiMain();
                  });
                },
                child: SizedBox(
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        _selectedIndex == 2 ? 'assets/icons_gempabumi_active.svg' : 'assets/icons_gempabumi.svg',
                      ),
                      SizedBox(height: 6,),
                      Text(
                          "Gempabumi",
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 36,
                onPressed: (){
                  setState(() {
                    _selectedIndex = 3;
                    currentScreen = KualitasUdaraMain();
                  });
                },
                child: SizedBox(
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        _selectedIndex == 3 ? 'assets/icons_kualitas_udara_active.svg' : 'assets/icons_kualitas_udara.svg',
                      ),
                      SizedBox(height: 6,),
                      Text(
                          "Kualitas Udara",
                          style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              )
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}
