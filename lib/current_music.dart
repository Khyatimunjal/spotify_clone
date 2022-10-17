import 'dart:ui';

import 'package:flutter/material.dart';

class current_music extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final Color color;

  const current_music(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.color})
      : super(key: key);

  @override
  State<current_music> createState() => _current_musicState();
}

class _current_musicState extends State<current_music> {
  double currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          Column(
            children: [
              const Text(
                "PLAYING FROM YOUR LIBRARY",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Container(
                  child: Text(
                "Liked Songs",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    color: const Color(0xFFFFFFFF).withOpacity(0.5)),
              )),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.scdn.co/image/ab67616d0000b2737636e1c9e67eaafc9f49aefd"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Container(
                          width: 150,
                          child: Text(
                            widget.description,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Slider(
              activeColor: Colors.white,
              value: currentSliderValue,
              min: 0,
              max: 200,
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0:40",
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                  Text(
                    "2:55",
                    style: TextStyle(color: Colors.white.withOpacity(0.5)),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
