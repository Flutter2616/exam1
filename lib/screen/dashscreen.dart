import 'package:exam1/modal_class.dart';
import 'package:flutter/material.dart';

class Dashscreen extends StatefulWidget {
  const Dashscreen({Key? key}) : super(key: key);

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  List img = [
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41GtAI8TybL._SX300_SY300_QL70_FMwebp_.jpg",
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41WCgGbvwhL._SX300_SY300_QL70_FMwebp_.jpg",
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/314Rp+8XKWL._SX342_SY445_.jpg",
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71vFKBpKakL._AC_UY218_.jpg",
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/31+KEhn35VL._SX342_SY445_.jpg"
  ];
  List name = ["Airpods", "watch", "i phone13", "Macbook", "ipad"];
  List price = ["2,000", "3,500", "45,000", "1,30,000", "40,000"];
  List data = [
    "Amazon Basics Bluetooth 5.0 Truly Wireless in Ear Earbuds with mic, Up to 38 Hours Playtime, IPX-5 Rated, Type-C Charging Case, Touch Controls, Voice Asst Black",
    "Fire-Boltt Gladiator 1.96 Biggest Display Smart Watch with Bluetooth Calling, Voice Assistant &123 Sports Modes, 8 Unique UI Interactions, SpO2, 24/7 Heart Rate Tracking, Rs 100 Off on UPI",
    "Apple iPhone 13 (128GB) - Starlight",
    "Apple 2020 MacBook Air Laptop M1 chip, 13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Silver",
    "Apple 2021 10.2-inch (25.91 cm) iPad with A13 Bionic chip (Wi-Fi, 64GB) - Space Grey (9th Generation)"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                "Explore Product",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 2),
              ),
              // SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                              color: Colors.grey.shade400),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,
                                  color: Colors.grey.shade400, size: 20),
                              hintText: "Search product"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      height: 50,
                      width: 70,
                      child: Icon(Icons.camera_alt_outlined,
                          color: Colors.blue, size: 25),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 10),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 20),
                  SizedBox(width: 15),
                  Text(
                    "List",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              // SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: img
                      .asMap()
                      .entries
                      .map((e) => InkWell(
                          onTap: () {
                            setState(() {
                              Data d1 = Data(
                                data: data[e.key],
                                img: img[e.key],
                                name: name[e.key],
                                price: price[e.key],
                              );
                              Navigator.pushNamed(context, 'details',arguments: d1);
                            });
                          },
                          child: box(img[e.key], price[e.key], name[e.key],data[e.key])))
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(
                        Icon(Icons.favorite_border,
                            color: Colors.white, size: 25),
                      ),
                      button(
                        Icon(Icons.tune, color: Colors.white, size: 25),
                      ),
                      button(
                        Icon(Icons.shopping_bag_outlined,
                            color: Colors.white, size: 25),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget box(String img, String price, String name,String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 200,
        height: 400,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue.shade100),
                    child: Icon(Icons.favorite, color: Colors.blue, size: 25),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: Icon(Icons.shopping_bag_outlined,
                        color: Colors.white, size: 25),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Image.network("$img", fit: BoxFit.fill),
              SizedBox(height: 5),
              Text(
                "\$ $price",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Text(
                "$name",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 15),
                  SizedBox(width: 2),
                  Icon(Icons.star, color: Colors.yellow, size: 15),
                  SizedBox(width: 2),
                  Icon(Icons.star, color: Colors.yellow, size: 15),
                  SizedBox(width: 2),
                  Icon(Icons.star, color: Colors.yellow, size: 15),
                  SizedBox(width: 2),
                  Icon(Icons.star_border, color: Colors.yellow, size: 15),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "See the details",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, size: 18, color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(Icon i) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: i,
    );
  }
}
