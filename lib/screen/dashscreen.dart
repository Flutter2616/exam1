import 'package:exam1/productmodel.dart';
import 'package:flutter/material.dart';

class Dashscreen extends StatefulWidget {
  const Dashscreen({Key? key}) : super(key: key);

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  List<ProductModel> filterlist = [
    ProductModel(
      name: "jeans",
      category: "fashion",
      price: "1,500",
      img:
          "https://rukminim1.flixcart.com/image/832/832/jean/n/u/3/bmw-darklevis-ben-martin-32-original-imaedpc4zcgjadsv.jpeg?q=70",
      data: "Men Regular Mid Rise Dark Blue Jeans",
    ),
    ProductModel(
      name: "Tshirt nike",
      category: "fashion",
      price: "2000",
      img:
          "https://rukminim1.flixcart.com/image/832/832/xif0q/t-shirt/x/9/3/-original-imaghg2hdhzwysdh.jpeg?q=70",
      data: "Dri-FIT Men Printed Round Neck Blue T-Shirt",
    ),
    ProductModel(
      name: "Women jeans",
      category: "fashion",
      price: "7,000",
      img:
          "https://rukminim1.flixcart.com/image/832/832/xif0q/jean/v/8/d/34-gtladiesjeans140-guti-original-imagg2gxuc56hzvz.jpeg?q=70",
      data:
          "The blue shade of jeans is too good...i really love it ... it's very comfortable and fabric is also good",
    ),
    ProductModel(
      name: "oppo find n2 flip",
      category: "mobile",
      price: "5,000",
      img:
          "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/n/z/u/-original-imagndwg4v7crhhd.jpeg?q=70",
      data:
          "Treat yourself to a fantastic smartphone that is packed with amazing features and helps you get things done without sacrificing entertainment value",
    ),
    ProductModel(
      name: "moto g32",
      category: "mobile",
      price: "15,000",
      img:
          "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/m/j/j/-original-imagnvvwvzyhfvx9.jpeg?q=70",
      data:
          "You can experience lag-free gaming, fluid multitasking, and stunning, stutter-free images with the Moto G32.",
    ),
    ProductModel(
      name: "Poco c50",
      category: "mobile",
      price: "10,000",
      img:
          "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/t/a/x/-original-imaghmtch6qfmfxg.jpeg?q=70",
      data:
          "Treat yourself to the POCO C50, which has a plethora of innovative capabilities, and take advantage of a seamless smartphone experience",
    ),
  ];
  List<ProductModel> productlist = [
    ProductModel(
      name: "i phone13",
      category: "mobile",
      price: "50,000",
      img:
          "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MM2Y3?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1630507733000",
      data:
          "Loaded with the next-generation mobile data network of 5G speed support, buy Apple iPhone 13 online, which comes loaded with various new specifications.",
    ),
    ProductModel(
      name: "oppo find n2 flip",
      category: "mobile",
      price: "5,000",
      img:
          "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/n/z/u/-original-imagndwg4v7crhhd.jpeg?q=70",
      data:
          "Treat yourself to a fantastic smartphone that is packed with amazing features and helps you get things done without sacrificing entertainment value",
    ),
    ProductModel(
      name: "moto g32",
      category: "mobile",
      price: "15,000",
      img:
          "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/m/j/j/-original-imagnvvwvzyhfvx9.jpeg?q=70",
      data:
          "You can experience lag-free gaming, fluid multitasking, and stunning, stutter-free images with the Moto G32.",
    ),
    ProductModel(
      name: "Poco c50",
      category: "mobile",
      price: "10,000",
      img:
          "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/t/a/x/-original-imaghmtch6qfmfxg.jpeg?q=70",
      data:
          "Treat yourself to the POCO C50, which has a plethora of innovative capabilities, and take advantage of a seamless smartphone experience",
    ),
    ProductModel(
      name: "Asus Rog 5",
      category: "mobile",
      price: "40,000",
      img:
          "https://dlcdnwebimgs.asus.com/gain/D551F7D4-8AC9-4299-A93D-3860DFC9D573",
      data:
          "Handset, USB Power Adapter (30W), Type C to Type C Cable, Documentation (User Guide, Warranty Card), Ejector Pin (Sim Tray Needle), Bumper",
    ),
    //fashion
    ProductModel(
      name: "jeans",
      category: "fashion",
      price: "1,500",
      img:
          "https://rukminim1.flixcart.com/image/832/832/jean/n/u/3/bmw-darklevis-ben-martin-32-original-imaedpc4zcgjadsv.jpeg?q=70",
      data: "Men Regular Mid Rise Dark Blue Jeans",
    ),
    ProductModel(
      name: "Tshirt nike",
      category: "fashion",
      price: "2000",
      img:
          "https://rukminim1.flixcart.com/image/832/832/xif0q/t-shirt/x/9/3/-original-imaghg2hdhzwysdh.jpeg?q=70",
      data: "Dri-FIT Men Printed Round Neck Blue T-Shirt",
    ),
    ProductModel(
      name: "Women jeans",
      category: "fashion",
      price: "7,000",
      img:
          "https://rukminim1.flixcart.com/image/832/832/xif0q/jean/v/8/d/34-gtladiesjeans140-guti-original-imagg2gxuc56hzvz.jpeg?q=70",
      data:
          "The blue shade of jeans is too good...i really love it ... it's very comfortable and fabric is also good",
    ),
    ProductModel(
      name: "boy casual shoes",
      category: "fashion",
      price: "1000",
      img:
          "https://rukminim1.flixcart.com/image/832/832/xif0q/kids-shoe/u/s/c/3c-hike-shoes-neobaby-original-imagnypbh9kvgqhm.jpeg?q=70",
      data: "Lace Walking Shoes For Boys & Girls  (Black)",
    ),
    ProductModel(
      name: "women tshirt",
      category: "fashion",
      price: "500",
      img:
          "https://rukminim1.flixcart.com/image/832/832/kz5vwy80/sweatshirt/0/2/c/11-12-years-swt-fs-a0-p1-x2o-original-imagb8he5fgwzrgy.jpeg?q=70",
      data: "Boys & Girls Full Sleeve Printed Sweatshirt",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "Explore Product",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 2),
                ),
                SizedBox(height: 35),
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
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: Colors.black, size: 20),
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
                SizedBox(height: 35),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        filterlist = [];
                        setState(() {
                          filterlist = productlist;
                        });
                      },
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        filterlist = [];
                        for (int i = 0; i < productlist.length; i++) {
                          if (productlist[i].category == "mobile") {
                            setState(() {
                              filterlist.add(productlist[i]);
                            });
                          }
                        }
                      },
                      child: Text(
                        "Mobile",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        filterlist = [];
                        for (int i = 0; i < productlist.length; i++) {
                          if (productlist[i].category == "fashion") {
                            setState(() {
                              filterlist.add(productlist[i]);
                            });
                          }
                        }
                      },
                      child: Text(
                        "Fashion",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                SizedBox(
                  height: 420,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            ProductModel p = ProductModel(
                                img: filterlist[index].img,
                                price: filterlist[index].price,
                                data: filterlist[index].data,
                                name: filterlist[index].name);
                            Navigator.pushNamed(context, 'detail',
                                arguments: p);
                          },
                          child: box(filterlist[index]));
                    },
                    itemCount: filterlist.length,
                  ),
                ),
                SizedBox(height: 50),
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
                // SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget box(ProductModel p) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: 200,
        height: 400,
        margin: EdgeInsets.all(5),
        // alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
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
              Image.network("${p.img}",
                  height: 150, width: 150, fit: BoxFit.fill),
              SizedBox(height: 5),
              Text(
                "\$ ${p.price}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Text(
                "${p.name}",
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
