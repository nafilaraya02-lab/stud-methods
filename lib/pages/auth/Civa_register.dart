import 'package:flutter/material.dart';
import 'package:studmethods/pages/auth/Civa_register.dart';
import 'package:studmethods/pages/ray_navigator.dart';

class CivaRegister extends StatefulWidget {
  const CivaRegister({super.key});

  @override
  State<CivaRegister> createState() => _CivaRegisterState();
}

class _CivaRegisterState extends State<CivaRegister> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _number = TextEditingController();

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
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/")),
        ),
        child: Center(
          child: Card(
            color: Colors.lightBlue.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
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
                          "STUD!",
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
                          "METHODs",
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
                TextField(
                  controller: _email,
                  keyboardType: TextInputType.text,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    hintText: "Email",
                    alignLabelWithHint: true,
                    focusColor: Colors.blue.shade900,
                    fillColor: Colors.white70,
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
                TextField(
                  controller: _number,
                  keyboardType: TextInputType.text,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    hintText: "Number",
                    alignLabelWithHint: true,
                    focusColor: Colors.blue.shade900,
                    fillColor: Colors.white70,
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
                ElevatedButton(
                  onPressed: () {
                    if (_username.value.text == "Hi" &&
                        _password.value.text == "Halo") {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Berhasil"),
                          content: Text("Welcome ${_username.text.toString()}"),
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
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RayNavigator()),
                      );
                    },
                    child: Text("Masuk", style: TextStyle(fontSize: 12)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
