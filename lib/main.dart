import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Layout', style: TextStyle(color: Colors.white)),
          centerTitle: false,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:
              // SizedBox(height: 20),
              // Row(
              //   children: [
              //     SizedBox(width: 20,height: 20),
              //     Container(height: 100, width: 100, color: Colors.red),
              //     SizedBox(width: 20),
              //     Container(height: 100, width: 100, color: Colors.green),
              //     SizedBox(width: 20),
              //     Container(height: 100, width: 100, color: Colors.blue),
              //   ],
              // ),
              // SizedBox(height: 20),
              // Row(
              //   children: [
              //     SizedBox(width: 20),
              //     Expanded(flex:1 ,child: Container(height: 100, width: 100, color: Colors.yellow)),
              //     SizedBox(width: 20),
              //     Expanded(flex:2 ,child:Container(height: 100, width: 100, color: Colors.purple)),
              //     SizedBox(width: 20),
              //   ],
              // ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: 120,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
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
