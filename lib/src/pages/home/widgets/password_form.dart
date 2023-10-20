import 'package:flutter/material.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PasswordFormState();
  }
}

class _PasswordFormState extends State<PasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Form(child: Column()));
  }
}
