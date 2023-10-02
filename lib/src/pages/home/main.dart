import 'package:flutter/material.dart';

class HoemScreen extends StatelessWidget {
  const HoemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue[400],
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
            ),
          ),
           Positioned(
            top: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height /5,
              color: Colors.red,
            child: Text('d'),
          ))
        ],
      )
    ,
    );
  }
}
