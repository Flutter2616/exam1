import 'package:exam1/productmodel.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    ProductModel d1=ModalRoute.of(context)!.settings.arguments as ProductModel;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Image.network(
                    "${d1.img}",
                    fit: BoxFit.fill),
              ),
              Container(
                height: 470,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.grey.shade200),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${d1.name}",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          ),
                          circle(Icon(Icons.favorite, color: Colors.white),
                              Border.all(color: Colors.blue), Colors.blue),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          SizedBox(width: 2),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          SizedBox(width: 2),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          SizedBox(width: 2),
                          Icon(Icons.star, color: Colors.amber, size: 18),
                          SizedBox(width: 2),
                          Icon(Icons.star_border,
                              color: Colors.amber, size: 18),
                        ],
                      ),
                      Text(
                        "${d1.data}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Quntity",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (i > 1) {
                                  i--;
                                } else  {
                                  i = 1;
                                }
                              });
                            },
                            child: circle(
                                Icon(Icons.remove,
                                    color: Colors.blue, size: 18),
                                Border.all(color: Colors.blue),
                                Colors.white),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "$i",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              setState(() {
                                i++;
                              });
                            },
                            child: circle(
                                Icon(Icons.add, color: Colors.white, size: 18),
                                Border.all(color: Colors.white),
                                Colors.blue),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ ${d1.price}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 28,
                                color: Colors.blue),
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.blue),
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget circle(Icon i1, Border b1, Color c1) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle, border: b1, color: c1),
      child: i1,
    );
  }
}
