import 'package:allocator/pages/detailsPage.dart';
import 'package:flutter/material.dart';

import 'modal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40),
              color: Colors.white,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on)),
                      const Text("Dar es salaam")
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_center_focus_sharp))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
              height: 50,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "search for a property here",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            Expanded(
              child: Container(
                  color: Colors.white,
                  height: 400,
                  child: ListView.builder(
                      itemCount: props.length,
                      itemBuilder: ((constext, index) {
                        return Column(
                          children: [
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(props[index].image),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 100,
                                    margin: const EdgeInsets.only(
                                        top: 20, left: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Center(
                                        child: Text(
                                      'Avalable',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20, left: 23),
                              color: Colors.white,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Agricultural open field farm',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on),
                                      Text(
                                        props[index].location,
                                        style: const TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Details(
                                                          location: props[index]
                                                              .location,
                                                          image: props[index]
                                                              .image,
                                                        )));
                                          },
                                          icon: const Icon(Icons.arrow_forward))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      }))),
            ),
            Container(
              height: 65,
              margin: const EdgeInsets.only(
                  bottom: 5, left: 20, right: 20, top: 10),
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.file_copy_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Report",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.file_copy_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Report",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
