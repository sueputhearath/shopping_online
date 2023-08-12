import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'deatail_page.dart';
class TopProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver:SliverMasonryGrid.count(
            crossAxisSpacing: 4,
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            childCount: 6,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPages()));
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child:CachedNetworkImage(
                              imageUrl: "https://rukminim1.flixcart.com/image/612/612/l51d30w0/shoe/z/w/c/10-mrj1914-10-aadi-white-black-red-original-imagft9k9hydnfjp.jpeg?q=70",
                              placeholder: (context, url) => const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ), ),

                          Positioned(
                              left: 0,
                              bottom: 5,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                color: Colors.grey.shade200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:  const [
                                    Icon(Icons.photo,
                                        size: 14, color:Colors.purpleAccent),
                                    SizedBox(width: 3),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.purpleAccent),
                                    ),
                                  ],
                                ),
                              )),
                          Positioned(
                              right: 5,
                              top: 5,
                              child: Icon(
                                Icons.favorite,
                                color:Colors.grey.shade200,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Nike Jordan",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700)),
                            const Text("180\$",
                                style: TextStyle(fontSize: 15)),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                RatingBar.builder(
                                  initialRating: 4,
                                  itemSize: 20,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    //print(rating);
                                  },
                                ),
                                Text("4.5")

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );

            },
          ),
        )
      ],
    );
  }
}
