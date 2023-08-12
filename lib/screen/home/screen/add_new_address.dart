import 'package:flutter/material.dart';
import 'package:online_shopping/screen/home/screen/login_screen.dart';
class AddNewAddress extends StatelessWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Add New Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ColWid(
                title: "Country/Region",
                widgets: CustomTextField(
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                  a: true,
                  hint: 'Select Country',
                ),
                text: "Please enter your address as required by international logistics",
              ),
              const SizedBox(height: 10,),
              ColWid(
                title: "Contact Information",
                widgets: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextField(
                      //icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      a: false,
                      hint: 'Contact Name',
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("Please enter a contact name"),
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 3,
                          child: CustomTextField(
                            a: true,
                            // readOnly: true,
                            //enable: false,
                            hint: '+885',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 5,
                          child: CustomTextField(
                            a: false,
                            hint: 'Phone Number',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                text: "",
              ),
              const SizedBox(height: 10,),
              ColWid(
                title: "Shipping Address",
                widgets: Column(
                  children: const [
                    CustomTextField(
                      //icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      a: false,
                      hint: 'Street address',
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                      //icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      a: false,
                      hint: 'Apt,Building,floor',
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                      //icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      a: false,
                      hint: 'City',
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                      //icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      a: false,
                      hint: 'Province',
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                      //icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                      a: false,
                      hint: 'Postal code/zip code',
                    ),
                  ],
                ),
                text: "",
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap:()=>Navigator.pop(context),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width*1,
                  color: Colors.red,
                  child: const Text("Save",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class ColWid extends StatelessWidget {
  const ColWid({Key? key,  this.title, this.widgets, this.text,})
      : super(key: key);
  final Widget? widgets;
  final String? title;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            const SizedBox(height: 10),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: widgets,
             ),
            const SizedBox(height: 10),
            Text(text!)
          ],
        ),
      ),
    );
  }
}
