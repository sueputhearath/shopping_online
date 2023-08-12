import 'package:flutter/material.dart';
class FavoritePage extends StatefulWidget {
   FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: false,
        title: const Text(
          "Favorite",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body:ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade50, borderRadius: BorderRadius.circular(8)),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://rukminim1.flixcart.com/image/612/612/l51d30w0/shoe/z/w/c/10-mrj1914-10-aadi-white-black-red-original-imagft9k9hydnfjp.jpeg?q=70',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nike Jordan ',
                            style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.w700
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Color: Red',
                            style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.w500
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'US 180\$',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.favorite,color: Colors.red,)
                    ),
                  )
                ],
              ),
            );
          }),
    );

  }
}
