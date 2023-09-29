import 'package:flutter/material.dart';

class ContainerInputWidget extends StatefulWidget {
  final String label;
  final TextField input;
  const ContainerInputWidget({this.label = "", this.input = const TextField(), super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContainerInputState();
  }
}

class _ContainerInputState extends State<ContainerInputWidget> {
  final hinst = "";
  _ContainerInputState();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 0.5)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
         widget.input
        ],
      ),
    );
  }
}
