import 'package:flutter/material.dart';
import 'package:password_manager/src/widgets/container_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/245/444/HD-wallpaper-black-geometric-shapes-dark-background-dark.jpg")),
        ),
        child: SafeArea(
            child: FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 1,
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40))
                      ),
                      width:  MediaQuery.of(context).size.width / 6,
                      height:  MediaQuery.of(context).size.height / 12,
                      child: const Icon(Icons.password, size: 40,),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(70))),
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              const Text(
                                "Login",
                                style: TextStyle(fontSize: 40),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const ContainerInputWidget(
                                label: "Email",
                                input: TextField(
                                  decoration: InputDecoration(
                                      helperText: "Enter your email"),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const ContainerInputWidget(
                                label: "Password",
                                input: TextField(
                                  decoration: InputDecoration(
                                      helperText: "Enter your secret password"),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    fixedSize: MaterialStatePropertyAll(
                                        Size.fromWidth(
                                            MediaQuery.of(context).size.width /
                                                1.2)),
                                    padding: const MaterialStatePropertyAll(
                                        EdgeInsets.all(15)),
                                    backgroundColor:
                                        const MaterialStatePropertyAll(
                                            Colors.black)),
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )),
                  
                  ],
                ),
                )
                )),
      ),
    );
  }
}
