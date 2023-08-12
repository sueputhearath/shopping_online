import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shopping/provider/helper.dart';
import 'package:provider/provider.dart';

import 'order_screen.dart';
class DetailPages extends StatefulWidget {

  const DetailPages({Key? key}) : super(key: key);

  @override
  State<DetailPages> createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  @override
  void initState() {
    var h = Provider.of<Helper>(context, listen: false);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<Helper>(
  builder: (context, p, child) {
  return Row(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width*0.5,
                  child: const Text('Add to cart',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderScreen()));
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width*0.5,
                    child: const Text('Buy Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        );
  },
),
      ),
      body: Consumer<Helper>(
  builder: (context, p, child) {
  return CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(

              expandedTitleScale: double.maxFinite,
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 0),
              title: const Text('Nike Jordan', textScaleFactor: 1,style: TextStyle(color: Colors.black),),
              background:Image.network(
                'https://rukminim1.flixcart.com/image/612/612/l51d30w0/shoe/z/w/c/10-mrj1914-10-aadi-white-black-red-original-imagft9k9hydnfjp.jpeg?q=70',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //DetailAppBar(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nike Jordan',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 22, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Price :',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                            TextSpan(
                                text: '180\$',
                                style: TextStyle(fontSize: 20,)
                            ),
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                              ),
                            ),
                            TextSpan(
                                text: '30% off',
                                style: TextStyle(fontSize: 20,color: Colors.red)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Colors:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            TextSpan(
                              text: 'Black',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 80,
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  width: 70,
                                  height: 70,
                                  child:ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network("https://rukminim1.flixcart.com/image/612/612/l51d30w0/shoe/z/w/c/10-mrj1914-10-aadi-white-black-red-original-imagft9k9hydnfjp.jpeg?q=70",fit: BoxFit.cover,)),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Shoe Size :',
                                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                              TextSpan(text: ' 30',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
                            ],
                          ),
                        ),

                        Wrap(
                            direction: Axis.horizontal,
                            children: List.generate(10, (index) =>
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: InkWell(
                                    onTap: (){
                                       p.selectSize(index);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: p.selectIndex == index? Colors.red :Colors.white),
                                          color:  p.selectIndex == index?Colors.red:Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text('30',style: TextStyle( color:p.selectIndex == index?Colors.white:Colors.black ),),
                                      ) ,
                                    ),
                                  ),
                                )
                            ))]
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quantity',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const INDEButton(available:"499 Available"),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Item Description",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Text(
                        'Enum veniam dolor sint ipsum culpa magna dolor incididunt laborum excepteu...',
                        style:
                        Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(Icons.photo),
                          SizedBox(width: 10),
                          Text("Product Show",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                          children:List.generate(5, (index) =>
                              Image.network("https://rukminim1.flixcart.com/image/612/612/l51d30w0/shoe/z/w/c/10-mrj1914-10-aadi-white-black-red-original-imagft9k9hydnfjp.jpeg?q=70")
                          )
                      )
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      );
  },
),
    );
  }
}
class INDEButton extends StatelessWidget {
  const INDEButton({Key? key, this.available}) : super(key: key);
final String? available;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          //alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
              color: Colors.grey.shade200
          ),
          child: const Center(child: Icon(Icons.remove)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: const Text("1",style: TextStyle(fontSize: 18),),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
              color: Colors.grey.shade200
          ),
          child: const Center(child: Icon(Icons.add)),
        ),
        const SizedBox(width: 20),
        Text(available!,style: TextStyle(color: Colors.grey.shade600),)
      ],
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            const SizedBox(width: 20),
            Text(
              content,
              style:
              Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
