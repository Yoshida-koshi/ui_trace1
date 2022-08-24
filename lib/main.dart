import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ui_trace1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UiTrace1(),
    );
  }
}

class UiTrace1 extends StatelessWidget {
  const UiTrace1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFF4F6F9),
              border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
            ),
            child: Center(
              child: Icon(
                Icons.location_on_outlined,
                size: 60,
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Enable location',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'You\'ll need to enable your location\nin order to use Tinder',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(child: Container()),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.orange,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.0, 1.0],
                ),
                borderRadius: BorderRadius.circular(25)),
            margin: const EdgeInsets.symmetric(horizontal: 80),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                primary: Colors.transparent,
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                'ALLOW LOCATION',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 124),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TELL ME MORE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Colors.grey))
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
