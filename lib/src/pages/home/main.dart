import 'package:flutter/material.dart';
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

  @override
  void initState() {
        super.initState();
       passwordService.getMyPasswords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Password List"),
        ),
        body: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 1,
            child: SafeArea(
              child: SizedBox(
                child: Column(
                  children: [
                    credentials(),
                    Expanded(
                        child: Stack(
                      children: [
                        Positioned.fill(
                            child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              margin: const EdgeInsets.all(10),
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: const Icon(Icons.add),
                              )),
                        ))
                      ],
                    ))
                  ],
                ),
              ),
            )));
  }
}

Widget credentials() {
  return SizedBox(
    child: Column(
      children: [
        TextButton(
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
                          children: const [
                            Text(
                              "Account",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("llxsantaellaxll@gmail.com"),
                            Text("2020-03-03", style: TextStyle(fontSize: 10)),
                          ],
                        ),
                        const Icon(Icons.facebook)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
