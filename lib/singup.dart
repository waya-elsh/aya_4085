
import 'package:aya_4085/elevated.dart';
import 'package:aya_4085/home.dart';
import 'package:aya_4085/textfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(50),
          child: Column(
            
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    if (context.locale.languageCode == 'en') {
            context.setLocale(Locale('ar'));
          } else {
            context.setLocale(Locale('en'));
          }
        },
        icon: Icon(
          Icons.translate,
          color: const Color.fromARGB(255, 243, 33, 187),
          size: 30,
        ),

      ),

    ),
              SizedBox(height: 50,),
              Center(
                child: LottieBuilder.asset("assets/lottie/Playful Easter Bunny.json",width: 100,),
              ),
              SizedBox(height: 20,),
              Text("Sign Up",style: GoogleFonts.caveat(fontSize: 40,color: const Color.fromARGB(255, 15, 16, 16)),).tr(),
              
              SizedBox(height: 30,),
              textfieldwidgest(hintText: 'Full Name'.tr(), suffixIcon: Icon(Icons.person)),

              SizedBox(height: 10,),

              textfieldwidgest(hintText: 'phone number'.tr(), suffixIcon: Icon(Icons.phone)),
              SizedBox(height: 10,),
              textfieldwidgest(hintText: 'username'.tr(), suffixIcon: Icon(Icons.email)),
              SizedBox(height: 10,),
              textfieldwidgest(hintText: 'password'.tr(), suffixIcon: Icon(Icons.lock)),
              SizedBox(height: 10,),
              textfieldwidgest(hintText: 'confirm password'.tr(), suffixIcon: Icon(Icons.lock_reset)),
              SizedBox(height: 20,),

              ElevatedButtonWidget(text: 'Create Account'.tr(), background:Color.fromARGB(255, 255, 180, 243)),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.pink,
                    value: isChecked,
                     onChanged: (value) {
                     setState(() {
                    isChecked = value!;
                   });
      },
    ),
    Text("I agree to terms",style: TextStyle(fontSize: 15,fontFamily: GoogleFonts.aBeeZee().fontFamily),).tr(),
  ],
),
              
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("already have an account?").tr(),
                  TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => App()));}, child: Text("Sign in",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),).tr())
              ],
              
              )
           
           
              
              
              
            ],
          ),
        )

      );
    
  }
}

    