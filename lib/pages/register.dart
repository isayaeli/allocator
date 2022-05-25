import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 185,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 185,
                    decoration: const BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage('assets/img/reg.jpg'),
                        //     fit: BoxFit.cover),
                        color: Color(0xFFE6E3E3),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(10))),
                    padding: const EdgeInsets.only(top: 100, left: 150),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: const EdgeInsets.only(left: 100, bottom: 10),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Login()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text('Have an Account?'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'LOGIN',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ],
                            ))),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                  height: 400,
                  margin: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Enter Your Username',
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter userame';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Enter Your Email',
                                  prefixIcon: Icon(Icons.email_outlined),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Enter Your Phone Number',
                                  prefixIcon: Icon(Icons.phone),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone mumber';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: 'Enter Your Password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: 'Confirm Your Password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                              width: 400,
                              height: 80,
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 15, bottom: 5),
                              child: ElevatedButton(
                                child: const Text(
                                  "Register Now",
                                  style: TextStyle(fontSize: 18),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Submitting data...')),
                                    );
                                  }
                                },
                              )),
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
