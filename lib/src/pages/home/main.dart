import 'package:flutter/material.dart';
import 'package:password_manager/src/pages/home/widgets/password_form.dart';
import 'package:password_manager/src/services/remote/password_service.dart';

class HoemScreen extends StatefulWidget {
  const HoemScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HoemScreen> {
  PasswordService passwordService = PasswordService();
  List<dynamic> _passwords = [];
  GlobalKey key = GlobalKey();

  @override
  void initState() {
    super.initState();
    passwordService.getMyPasswords().then((value) {
      setState(() {
        _passwords = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: key,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const PasswordForm();

                });
          },
        ),
        appBar: AppBar(
          title: const Text("Password List"),
        ),
        body: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 1,
            child: SafeArea(
              child: SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: credentials(_passwords),
                    ),
                    //  Container()
                  ],
                ),
              ),
            )));
  }
}

Widget credentials(List<dynamic> passwords) {
  return SizedBox(
      child: ListView(
    children: [
      ...passwords.map((e) {
        return TextButton(
          onPressed: () {},
          child: SizedBox(
            width: double.infinity,
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Account",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(e['username']),
                            Text(e?['created_at'],
                                style: const TextStyle(fontSize: 10)),
                          ],
                        ),
                        const Icon(Icons.lock)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList()
    ],
  ));
}
