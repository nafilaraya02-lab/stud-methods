import 'package:flutter/material.dart';
import 'package:studmethods/pages/auth/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isObscure = true;
  IconData _isObscureIcon = Icons.remove_red_eye;

  void isObscureText() {
    if (_isObscure) {
      _isObscure = false;
      _isObscureIcon = Icons.remove_red_eye_outlined;
    } else {
      _isObscure = true;
      _isObscureIcon = Icons.remove_red_eye;
    }
    debugPrint(_isObscure.toString());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.all(50),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/")),
        ),
        child: Center(
          child: Card(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "WELCOME",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                BoxShadow(
                                  offset: Offset(2, 1),
                                  color: Colors.blueGrey,
                                  blurRadius: 3,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "STUD! METHODs",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                BoxShadow(
                                  offset: Offset(2, 1),
                                  color: Colors.white30,
                                  blurRadius: 3,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  TextField(
                    controller: _username,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Username",
                      alignLabelWithHint: true,
                      focusColor: Colors.blue.shade900,
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _password,
                    keyboardType: TextInputType.text,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      hintText: "Password",
                      alignLabelWithHint: true,
                      focusColor: Colors.blue.shade900,
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscureIcon),
                        onPressed: () {
                          setState(() {
                            isObscureText();
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Belum punya akun?', style: TextStyle(color: Colors.white),),
                  TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));},
                    child: Column(children: [Text('Register dulu ya',style: TextStyle(color: Colors.white),)]),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_username.value.text == "Hi" &&
                          _password.value.text == "hlo") {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Berhasil"),
                            content: Text(
                              "Selamat data ${_username.text.toString()}",
                            ),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Gagal"),
                            content: Text("Silahkan coba lagi!!"),
                          ),
                        );
                      }
                    },
                    child: Text("Masuk", style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}