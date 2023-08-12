import 'package:flutter/material.dart';

import 'add_new_address.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          backgroundColor:Colors.white,
          onClosing: (){},
          builder: (BuildContext context) {
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: double.infinity,
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Total ",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("US \$12.43 ",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            );
          },

        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text('Check Out',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),)),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Order Confirm",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewAddress()));
                },
                child: RowWid(
                    color: Colors.blue,
                    icon: Icons.location_on_outlined,
                    text: "Add New Address"),
              ),
              SizedBox(height: 10),
              RowWid(
                color: Colors.cyan,
                icon: Icons.monetization_on,
                text: "Select Payment Method",
                icon2: Icons.arrow_forward_ios,
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.store,
                        color: Colors.black,
                      ),
                      title: Text('N1 Store'),
                      trailing: Icon(Icons.note),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 90,
                                  height: 90,
                                  child: Image.network(
                                      "https://rukminim1.flixcart.com/image/612/612/l51d30w0/shoe/z/w/c/10-mrj1914-10-aadi-white-black-red-original-imagft9k9hydnfjp.jpeg?q=70")),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nike Jordan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 18),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "Colors: red",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16),
                                  ),
                                ),
                                Text(
                                  "US \$180",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500, fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          endIndent: 10,
                          indent: 10,
                          thickness: 0.3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shipping : US\$6.5",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Summary",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RowSum(text1: "Total item costs", text2: "US \$6.90"),
                      RowSum(text1: "Total item costs", text2: "US \$6.90"),
                      RowSum(text1: "Total item costs", text2: "US \$6.90")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                  "Upon clickin 'Place Order', I confirm I have read and acknowledged all term and polocies"),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     SizedBox(height: 20,),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text("Total ",style: TextStyle(fontWeight: FontWeight.bold),),
              //         Text("US \$12.43 ",style: TextStyle(fontWeight: FontWeight.bold),)
              //       ],
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class RowSum extends StatelessWidget {
  const RowSum({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          endIndent: 5,
          indent: 5,
          thickness: 0.3,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(text1), Text(text2)],
          ),
        ),
      ],
    );
  }
}

class RowWid extends StatelessWidget {
  const RowWid({Key? key, this.icon, this.text, this.icon2, this.color})
      : super(key: key);
  final IconData? icon;
  final String? text;
  final IconData? icon2;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.black,
          ),
          title: Text(
            text!,
            style: TextStyle(color: color),
          ),
          trailing: Icon(icon2),
        ),
      ),
    );
  }
}
