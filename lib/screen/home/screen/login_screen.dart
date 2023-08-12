import 'package:flutter/material.dart';
import 'package:online_shopping/screen/home/screen/signup_screen.dart';
class LoginScreen extends StatelessWidget {
  //static const routeName = '/loginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonLS(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Log In Continue!',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black)
                          ),
                        ],
                      ),
                      const Spacer(),
                      const SocialMediaLogin(
                        method: 'Login',
                      ),
                      const Spacer(),
                      OrRow(),
                      const Spacer(),
                      const TextFields(),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red, // Background color
                          ),
                          onPressed: () {
                            //Navigator.of(context).pushNamed(TabScreen.routeName);
                          },
                          child: const Text('Login',style: TextStyle(fontSize: 18,color: Colors.white),),
                        ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        },
                        child: const OptionButton(
                          desc: 'Don\'t have an account? ',
                          method: 'Sign Up',
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          hint: 'Email Address', a: false,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          a: false,
          hint: 'Password',
          icon: Image.asset('assets/images/hide_icon.png'),
        ),
      ],
    );
  }
}

class BackButtonLS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return RawMaterialButton(
      child: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
      constraints: const BoxConstraints.tightFor(
        width: 32,
        height: 40,
      ),
    );
  }
}


class CustomTextField extends StatelessWidget {
  const CustomTextField({

    required this.hint,
   this.icon, this.controller,
    required this.a, this.enableInteractiveSelection,
  });
  final bool a;
  final TextEditingController? controller;
  final String hint;
  final Widget? icon;

  final bool? enableInteractiveSelection;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: a,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
          borderSide: const BorderSide(
            color:Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: hint,
        suffixIcon: icon,
      ),
    );
  }
}


class OptionButton extends StatelessWidget {
  final String ?desc;
  final String ?method;
  //final Function? onPressHandler;

  const OptionButton({this.desc, this.method,});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText2,
        children: [
          TextSpan(text: desc),
          TextSpan(
            text: method,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
class OrRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: const [
              SizedBox(
                height: 8,
              ),
              Divider(),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:16,
          ),
          child: Text(
            'OR',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.grey),
          ),
        ),
        Expanded(
          child: Column(
            children: const [
              SizedBox(
                height: 8,
              ),
              Divider(),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SocialMediaLogin extends StatelessWidget {
  const SocialMediaLogin({
    this.method,
  });

  final String? method;

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonTheme(
      data: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red.shade400,
          ),
          foregroundColor: MaterialStateProperty.all(
            Colors.red.shade400,
          ),
          elevation: MaterialStateProperty.all(
            0,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                4,
              ),
            ),
          ),
          alignment: Alignment.centerLeft,
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16,
            ),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(
              double.infinity,
              56,
            ),
          ),
        ),
      ),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              '$method with Facebook',style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              '$method with Google',style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}