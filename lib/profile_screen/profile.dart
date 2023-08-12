import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      border: Border.all(color: Colors.amber)),
                  width: 200,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.amber)),
                      width: 150,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: Image.asset(
                              "assets/images/profile.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                ),
               const  Text("Sue puthearath",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 20),),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 250,
             bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )
                ),
            child:SingleChildScrollView(
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                children:List.generate(profileList.length, (index) =>
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(profileList[index].icon),
                          title: Text(profileList[index].text.toString()),
                          trailing:const  Icon(Icons.arrow_forward_ios),
                        ),
                         Divider(
                          color: Colors.grey.shade300,
                          endIndent: 25,
                          indent: 40,
                        ),
                      ],
                    ),
                )
              ),
            ) ,
          ))
        ],
      ),
    );
  }
}
class Profile {
  final int id;
  final IconData icon;
  final String text;
  const Profile(this.icon, this.text, this.id);
}
List<Profile> profileList = [
   const Profile(Icons.person, "Edit Profile",1),
   const Profile(Icons.location_on, "Shopping Address",2),
   const Profile(Icons.favorite, "Wishlist",3),
   const Profile(Icons.note_add, "Order History",4),
   const Profile(Icons.notifications, "Order History",5),
   const Profile(Icons.notifications, "Order History",6),

];
class ProfileMode extends StatelessWidget {
  const  ProfileMode({Key? key, required this.icon, required this.text}) : super(key: key);
final IconData icon;
final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}

