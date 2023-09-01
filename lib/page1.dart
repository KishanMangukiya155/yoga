import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> list1 = [
    {
      'name': 'Yoga',
      'image': 'assets/image/yoga.png',
      'time': '7 a.m',
    },
    {
      'name': 'English',
      'image': 'assets/image/eng.png',
      'time': '1 p.m',
    },
    {
      'name': 'Music',
      'image': 'assets/image/bpm.png',
      'time': '8 p.m',
    },
  ];

  List<Map<String, dynamic>> list2 = [
    {
      'name': 'Sculting',
      'image': 'assets/image/seulpting.png',
      'colors': Color(0xffFFE1C7)
    },
    {
      'name': 'Pilates',
      'image': 'assets/image/pngeggpilates.png',
      'colors': Color(0xffC4DEF9)
    },
    {
      'name': 'Floricq',
      'image': 'assets/image/floricu.png',
      'colors': Color(0xffE2F0F5),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 360,
              color: Color(0xffF3F3FF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50,
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Hop Hey !',
                            style: TextStyle(
                                fontFamily: 'Lora-Regular',
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Ready to become better ? !',
                            style: TextStyle(
                                fontFamily: 'Lora-Regular', fontSize: 10)),
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/image/run1.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'My daliy tasks',
                        style: TextStyle(
                            fontFamily: 'Lora-Regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Complete daliy tasks to reach your golas',
                    style: TextStyle(fontFamily: 'Lora-Regular', fontSize: 10),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 365,
                height: 125,
                //   color: Colors.black12,
                child: ListView.builder(
                  itemCount: list1.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 110,
                      width: 138,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Image.asset(
                                list1[index]['image'],
                                width: 35,
                                height: 30,
                              ),
                              SizedBox(width: 5),
                              Text(
                                list1[index]['name'],
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Text(list1[index]['time'],
                                    style:
                                        TextStyle(color: Colors.grey.shade400)),
                                SizedBox(width: 27),
                                Icon(Icons.circle_outlined,
                                    color: Colors.grey.shade400),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 3)
                          ]),
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Suggested Coures',
                        style: TextStyle(
                            fontFamily: 'Lora-Regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Try these video coures for FREE',
                    style: TextStyle(fontFamily: 'Lora-Regular', fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 360,
                height: 240,
                // color: Colors.black12,
                child: ListView.builder(
                  itemCount: list2.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 180,
                          width: 138,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 15),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.play_circle,
                                          color: Colors.black26),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                list2[index]['image'],
                                width: 120,
                                height: 100,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: list2[index]['colors'],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black12),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 3)
                            ],
                          ),
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 13, right: 75),
                          child: Text(list2[index]['name']),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
