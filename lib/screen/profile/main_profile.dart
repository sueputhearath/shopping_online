import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class MainProfile extends StatelessWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://img.staticmb.com/mbcontent/images/uploads/2022/5/Modern%20Bungalow%20Design.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                        Colors.blue,
                        Colors.transparent,
                      ])),
                ),
              ),
              Positioned(
                  top: 20,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Profile',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  CupertinoIcons.cart,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                    "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
                                width: 50,
                                height: 50,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Sue Puthearath",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Text("Student",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Layout(
                                t1: "Order",
                                t2: "90",
                              ),
                            ),
                            Expanded(
                              child: Layout(
                                t1: "Favorite",
                                t2: "90",
                              ),
                            ),
                            Expanded(
                              child: Layout(
                                t1: "Payment",
                                t2: "90",
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              // Positioned(
              //   top: 0,
              //     left: 0,
              //     right: 0,
              //     bottom: 0,
              //     child: Container(
              //       width: 50,
              //       height: 50,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(50),
              //         color: Colors.white,
              //       ),
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(50),
              //         child: CachedNetworkImage(
              //           fit: BoxFit.cover,
              //           imageUrl: "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",width: 50,height: 50,
              //           placeholder: (context, url) => CircularProgressIndicator(),
              //           errorWidget: (context, url, error) => Icon(Icons.error),
              //         ),
              //       ),
              //     )
              // )
            ],
          ),

        ],
      ),
    );
  }
}
class Layout extends StatelessWidget {
  const Layout({Key? key, required this.t1, required this.t2}) : super(key: key);
final String t1;
final String t2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(t1,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700)),
              SizedBox(height: 10,),
              Text(t2,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        VerticalDivider(
          color: Colors.white,  //color of divider
          width: 10, //width space of divider
          thickness: 3, //thickness of divier line
          indent: 10, //Spacing at the top of divider.
          endIndent: 10, //Spacing at the bottom of divider.
        )
      ],
    );
  }
}

