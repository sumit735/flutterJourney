import 'package:flutter/material.dart';
import 'package:myfirstapp/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;
  final _formkey = GlobalKey<FormState>();

  goToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });
      await Future.delayed(
        const Duration(seconds: 1),
      );
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() => changeBtn = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // add form
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                          // border: OutlineInputBorder(),
                          // disabledBorder:
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (username) =>
                            setState(() => name = username),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          // border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          } else if (value.length < 6) {
                            return "Password Should Be More Than 6 Digits";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        color: context.theme.buttonColor,
                        borderRadius: BorderRadius.circular(
                          changeBtn ? 50 : 8,
                        ),
                        child: InkWell(
                          onTap: () => goToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(
                              seconds: 1,
                            ),
                            height: 50,
                            width: changeBtn ? 50 : 150,
                            alignment: Alignment.center,
                            child: changeBtn
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
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
