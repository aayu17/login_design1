import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:login_design1/after_login.dart';
import 'package:login_design1/style/buttonOthers.dart';
import 'package:login_design1/style/buttonStyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hide = true;
  final myEmail = TextEditingController();
  final myPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue.shade200,
              Colors.blue.shade50,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in to your",
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Sign in to your account",
                    style: TextStyle(fontSize: 20,color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 50, right: 50),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.blue.shade50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.shade50,
                                  blurRadius: 4,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey.shade50)),
                              ),
                              child: Column(
                                children: [
                                  TextField(
                                    controller: myEmail,
                                    decoration: const InputDecoration(
                                        prefixIcon: Icon(Icons.account_circle),
                                        hintText: "Email ID",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                  ),
                                  TextField(
                                    controller: myPassword,
                                    obscureText: hide,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.key),
                                      suffixIcon: IconButton(
                                          onPressed: () => setState(() {
                                                if (hide) {
                                                  hide = false;
                                                } else {
                                                  hide = true;
                                                }
                                              }),
                                          icon: Icon(hide == false
                                              ? Icons.remove_red_eye
                                              : Icons.visibility_off)),
                                      hintText: "Password",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          String getEmail = myEmail.text;
                          String getPassword = myPassword.text;
                          // print(getEmail);
                          // print(getPassword);
                          if (getEmail == "next._.coders" &&
                              getPassword == "123") {
                            (Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyAppk()),
                            ));
                          } else if(getEmail.isEmpty ||
                              getPassword.isEmpty) {
                            final snackBar = SnackBar(
                              content:  Text('Empty Credentials!'),
                              action: SnackBarAction(
                                label: '',
                                onPressed: () {
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                          else{
                            final snackBar = SnackBar(
                              content:  Text('Wrong Password!'),
                              action: SnackBarAction(
                                label: 'Try Again',
                                onPressed: () {
                                },


                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                            
                          
                        },
                        style: myButtonStyle,
                        child: Text("Login"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        width: 200,
                        child: Row(children: <Widget>[
                          Expanded(
                              child: Divider(
                            color: Colors.grey,
                          )),
                          Text(" OR "),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton.icon(
                        onPressed: () => const MyAppk(),
                        icon: Image.asset(
                          "assets/images/google.png",
                          height: 30,
                          width: 30,
                        ),
                        label: const Text(
                          "Login with Google",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: myOtherButtonStyle
                      ),
                      SizedBox(height: 30,),
                      ElevatedButton.icon(
                        onPressed: () => const MyAppk(),
                        icon: Image.asset(
                          "assets/images/fb.png",
                          height: 30,
                          width: 30,
                        ),
                        label: const Text(
                          "Login with Facebook",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: myOtherButtonStyle
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ? ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Register ",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
