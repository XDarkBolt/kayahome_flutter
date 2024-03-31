import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MainApp());
  });
}

List<BoxShadow> cardShadow = const [
  BoxShadow(
    color: Color.fromRGBO(242, 242, 247, 1),
    spreadRadius: 1,
    blurRadius: 5,
    offset: Offset(-5, -5), // changes position of shadow
  ),
  BoxShadow(
    color: Color.fromRGBO(28, 28, 30, 0.1),
    spreadRadius: 1,
    blurRadius: 5,
    offset: Offset(5, 5), // changes position of shadow
  ),
];

LinearGradient backgroundGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFdadfe6),
    Color(0xffe0e5ec),
  ],
  stops: [0.0, 1.0],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var cardSize = MediaQuery.of(context).size.width / 3.5;
    var cardHorzSize = MediaQuery.of(context).size.width / 4;
    return MaterialApp(
      title: 'Kaya Home',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffe0e5ec)),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: cardShadow,
                  gradient: backgroundGradient,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Color.fromARGB(255, 50, 50, 50),
                            BlendMode.overlay,
                          ),
                          child: Image.network(
                            'https://random.imagecdn.app/500/500',
                            width: MediaQuery.of(context).size.width,
                            height: cardSize,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text(
                          'Top Left Text',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 10),
                        child: const Text(
                          'Top Left Text',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: cardHorzSize,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                              color: const Color(0xFFdadfe6),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: cardShadow,
                              gradient: backgroundGradient),
                        )),
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFFdadfe6),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: cardShadow,
                          ),
                        )),
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFFdadfe6),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: cardShadow,
                          ),
                        )),
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFFdadfe6),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: cardShadow,
                          ),
                        )),
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFFdadfe6),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: cardShadow,
                          ),
                        )),
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFFdadfe6),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: cardShadow,
                          ),
                        )),
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFFdadfe6),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: cardShadow,
                          ),
                        )),
                    Card(
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          width: cardHorzSize,
                          decoration: BoxDecoration(
                            color: const Color(0xFFdadfe6),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: cardShadow,
                          ),
                        )),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your button's onPressed logic here
                },
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
