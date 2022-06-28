import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landinastyle/screens/Splash/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(
    LandinaStyle(),
  );
}

class LandinaStyle extends StatelessWidget {
  const LandinaStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Estedad',
          primaryColor: const Color.fromARGB(45, 0, 0, 0),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                color: Color(0xff252525),
                fontWeight: FontWeight.w700,
                fontFamily: 'Estedad',
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusColor: Color.fromARGB(255, 51, 51, 51),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color.fromARGB(21, 0, 0, 0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color.fromARGB(45, 0, 0, 0),
              ),
            ),
            hintStyle: TextStyle(
              color: Color.fromARGB(72, 0, 0, 0),
            ),
          ),
          appBarTheme: AppBarTheme(
            shadowColor: Colors.white,
            color: Color.fromARGB(255, 51, 51, 51),
            foregroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.white,
        ),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('fa'),
          // Locale('en'),
        ],
        home: const SplashScreen(),
      ),
    );
  }
}
