import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: Color.fromRGBO(131, 131, 131, 1)),
                    ),
                    InkWell(
                      child: Row(
                        children: [
                          Text(
                            'Jakarta',
                            style: GoogleFonts.raleway(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Color.fromRGBO(131, 131, 131, 1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 247, 247, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_sharp),
                      hintText: 'Search address or near you',
                      hintStyle: TextStyle(fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(160, 218, 251, 1),
                          Color.fromRGBO(10, 142, 217, 1)
                        ])),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    width: 40,
                    margin: EdgeInsets.only(left: 10),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text('Home'),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Near From You'),
              ),
              InkWell(
                child: Text('See more'),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 20),
                itemCount: 5,
                itemBuilder: (context, index) => InkWell(
                      child: Container(
                        width: 200,
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset("$index", fit: BoxFit.cover),
                      ),
                    )),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('Best For You'),
              ),
              InkWell(
                child: Text('See more'),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 20, right: 40),
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                // padding: EdgeInsets.only(right: 20),
                itemCount: 5,
                itemBuilder: (context, index) => InkWell(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              margin: EdgeInsets.only(right: 20, left: 10),
                              child: Image.asset('$index'),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text('Orchard House'),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                  ),
                                  Text(
                                    'Rs250000.00/Year',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Row(
                                    children: [
                                      Text('Bedroom'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('Bathroom')
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
          ))
        ],
      ),
    );
  }
}
