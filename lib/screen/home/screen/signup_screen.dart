import 'package:flutter/material.dart';
import 'package:online_shopping/screen/home/screen/order_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
 static const routeName = '/signupScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonLS(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Sign Up Continue!',
                          style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700)
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const SocialMediaLogin(
                      method: 'Sign Up',
                    ),
                    const SizedBox(height: 20,),
                    OrRow(),
                    const SizedBox(height: 20,),
                    const CustomTextField(
                      a: false,
                      hint: 'Your Name',
                    ),
                    const SizedBox(height: 20,),
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
                    const SizedBox(height: 20,),
                    const CustomTextField(
                        a: false,
                        hint: 'Email Address'),
                    const SizedBox(height: 20,),
                    CustomTextField(
                      a: false,
                      hint: 'Password',
                      icon: Image.asset('assets/images/hide_icon.png'),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Background color
                          onPrimary: Colors.white, // Text Color (Foreground color)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderScreen()));
                        },
                        child: const Text('Sign Up',style: TextStyle(fontSize: 18),),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: const OptionButton(
                        desc: 'Have an account? ',
                        method: 'Login',
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
