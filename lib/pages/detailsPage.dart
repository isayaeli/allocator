import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  var location;
  var image;
  Details({this.location, this.image});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 400,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 30),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: const EdgeInsets.only(top: 20),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.green,
                        )),
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    margin: const EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                        child: Text(
                      'Avalable',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: const EdgeInsets.only(top: 20),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.green,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 23),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Agricultural open field farm',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      Text(
                        widget.location,
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                height: 300,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 8),
                    Text(
                        "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                          ))),
                  Container(
                    height: 45,
                    width: 280,
                    margin: const EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Eplore Property',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
