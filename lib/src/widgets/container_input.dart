
import 'package:flutter/material.dart';

class ContainerInputWidget extends StatefulWidget {
  final String label;
  final String hintText;
  final String helperText;
  final bool obscureText;
  
  const ContainerInputWidget(
      {this.label = "", this.helperText= "", this.hintText = "" , this.obscureText = false, super.key});

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
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 0.5)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            obscureText: widget.obscureText,
            decoration: InputDecoration(
                
                hintText: widget.hintText,
                label: Text(widget.label),
                 helperText: widget.helperText),
          ),
        ],
      ),
    );
  }
}
