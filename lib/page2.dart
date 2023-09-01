import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map<String, dynamic>> list3 = [
    {
      'name': 'Creative Writing',
      'name1': '122 hours',
      'image': 'assets/image/wrting.png',
      'button': 'Pro',
      'colors': Color(0xffFFE1C7),
    },
    {
      'name': 'Chinese for Beginners',
      'name1': '440 hours',
      'image': 'assets/image/beginners.png',
      'button': 'Entry',
      'colors': Color(0xffC4DEF9),
    },
    {
      'name': 'Psyehology\nBasics',
      'name1': '19 hours',
      'image': 'assets/image/basics.png',
      'button': 'Pro',
      'colors': Color(0xffE2F0F5),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Courses',
                    style: TextStyle(
                        fontFamily: 'Lora-Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Find a coure that suits you best',
                style: TextStyle(fontFamily: 'Lora-Regular', fontSize: 15),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 330,
                      // color: Colors.blueGrey,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          prefixIcon: Icon(Icons.search_rounded),
                          hintText: 'Search ',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          //fillColor: Colors.yellow,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(10),
                        //  color: Colors.grey.shade100
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 480,
                    width: 350,
                    //color: Colors.blue,
                    child: ListView.builder(
                      itemCount: list3.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 160,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        list3[index]["name"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Lora-Regular",
                                            fontSize: 18),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        list3[index]["name1"],
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                      SizedBox(height: 8),
                                      Container(
                                        width: 55,
                                        height: 27,
                                        child: Center(
                                            child: Text(
                                          list3[index]["button"],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xffFEF1E1)),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      list3[index]["image"],
                                      height: 150,
                                      width: 111,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: list3[index]["colors"],
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(color: Colors.black12, blurRadius: 3)
                              ]),
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
