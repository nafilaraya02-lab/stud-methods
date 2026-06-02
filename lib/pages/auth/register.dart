import 'package:flutter/material.dart';
import 'package:studmethods/pages/ray_navigator.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _usernme = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isObscure = true;
  IconData _isObscureIcon = Icons.remove_red_eye;
  bool _rememberMe = true;

  void isObsureText() {
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
        padding: const EdgeInsets.all(50),
        width: size.width,
        height: size.height,
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              color: Colors.blue.shade700,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'WELCOME SEMUA',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _usernme,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        alignLabelWithHint: true,
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _phone,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Number Phone',
                        alignLabelWithHint: true,
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _email,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        alignLabelWithHint: true,
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      controller: _password,
                      keyboardType: TextInputType.text,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        alignLabelWithHint: true,
                        focusColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isObscureIcon),
                          onPressed: () {
                            setState(() {
                              isObsureText();
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = !_rememberMe;
                            });
                          },
                        ),
                        Text('Ingat Aku', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RayNavigator()),
                        );
                      },
                      style: ButtonStyle(
                        maximumSize: WidgetStatePropertyAll(
                          Size(size.width - 80, 50),
                        ),
                      ),
                      child: Text('Buat Akun', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}