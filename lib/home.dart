
import 'package:aya_4085/elevated.dart';
import 'package:aya_4085/singup.dart';
import 'package:aya_4085/textfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class App extends StatelessWidget {
  const App({super.key});

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
              Text("Waya",style: GoogleFonts.caveat(fontSize: 40,color: const Color.fromARGB(255, 15, 16, 16)),).tr(),
              
              SizedBox(height: 30,),
              textfieldwidgest(hintText: 'username'.tr(), suffixIcon: Icon(Icons.person)),

              SizedBox(height: 35,),

              textfieldwidgest(hintText: 'password'.tr(), suffixIcon: Icon(Icons.lock)),
              SizedBox(height: 10,),
              Align(alignment:AlignmentGeometry.centerRight,child: Text("forget Password?".tr(),style: TextStyle(decoration: TextDecoration.underline,color: const Color.fromARGB(255, 37, 160, 236),fontSize: 15),)),
              
              SizedBox(height: 40,),

              ElevatedButtonWidget(text: 'Login'.tr(), background:Color.fromARGB(255, 255, 180, 243)),

              
              
              SizedBox(height: 30,),

              Text("or".tr()),

              SizedBox(height: 10,),
              ElevatedButtonWidget(text: 'Login With Google'.tr(), background: const Color.fromARGB(255, 255, 255, 255), borderColor: const Color.fromARGB(255, 246, 79, 221), borderWidth: 0,),

              
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an account?").tr(),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Singup()));
                  }, child: Text("Sign Up",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),).tr())
              ],
              
              )
           
           
              
              
              
            ],
          ),
        )

      );
    
  }
}

    