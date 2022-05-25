import 'package:allocator/pages/home.dart';
import 'package:flutter/material.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              height: 300,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 185,
                    decoration: const BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage('assets/img/ste1.png'),
                        //     fit: BoxFit.contain),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(0))),
                    padding:
                        const EdgeInsets.only(top: 100, left: 150, bottom: 20),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 167, top: 275),
                      child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => const Login()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                            ],
                          ))),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  height: 400,
                  margin: const EdgeInsets.only(top: 20),
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
                                  hintText: 'Enter Your Email',
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter email';
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
                              width: 400,
                              height: 80,
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 15, bottom: 5),
                              child: ElevatedButton(
                                child: const Text(
                                  "Login Now",
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Home()));
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
