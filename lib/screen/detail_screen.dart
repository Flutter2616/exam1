import 'package:exam1/modal_class.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    Data D = ModalRoute
        .of(context)!
        .settings
        .arguments as Data;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
                height: 200,
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                child: Image.network(
                  "${D.img}",
                  fit: BoxFit.fill,
                )),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${D.name}",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle,
                              color: Colors.blue),
                          child: Icon(Icons.favorite, color: Colors.white,
                              size: 20),
                        ),
                      ],
                    ),
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
                    Text("${D.data}", style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w200),),
                    Text("Quantity", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 2),),
                    Row(
                      children: [
                        InkWell(onTap: ()
                        {
                          setState(() {
                            if(i>=0)
                              {
                                i++;
                              }
                          });
                        }, child: Circle(Colors.white, Border
                            .all(
                            color: Colors.blue), Icon(Icons.remove),),),
                        SizedBox(width: 10),
                        Text("$i", style: TextStyle(color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w400)),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              i++;
                            });
                          },
                          child: Circle(Colors.blue, Border.all(color: Colors.white),
                            Icon(Icons.add),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$ ${D.price}", style: TextStyle(color: Colors
                            .blue, fontSize: 30, fontWeight: FontWeight.w200),),
                        Container(
                          width: 100,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius
                              .circular(25), color: Colors.blue),
                          child: Text("Add to cart", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Circle(Color c1, Border b1, Icon i1) {
    return Container(
      height: 40,
      width: 40, decoration: BoxDecoration(
      color: c1,
      shape: BoxShape.circle,
      border: b1,
    ),
      child: i1,
    );
  }
}
