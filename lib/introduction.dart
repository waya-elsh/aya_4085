import 'package:aya_4085/home.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to my App" ,
          body: "This is a description of how it works.",
          image: Center(
            child: LottieBuilder.asset("assets/lottie/Easter Bunny Boy waving.json", width: 300, height: 300),
          ),
          decoration: PageDecoration(
            pageColor: const Color.fromARGB(255, 255, 255, 255),
            titleTextStyle: GoogleFonts.caveat(fontSize: 50, fontWeight: FontWeight.bold),
            bodyTextStyle: GoogleFonts.arima(fontSize: 20, fontWeight: FontWeight.normal)
          )
        ),
        PageViewModel(
        title: "Easy Login & Sign Up",
        body: "Create your personal account or log in securely to access all app features quickly and easily",
        image: Center(
          child: LottieBuilder.asset("assets/lottie/Login.json",width: 700, height: 300.0),
  ),
  decoration:  PageDecoration(
    pageColor: Color.fromARGB(255, 255, 255, 255),
    titleTextStyle: GoogleFonts.caveat(fontSize: 50, fontWeight: FontWeight.bold),
            bodyTextStyle: GoogleFonts.arima(fontSize: 20, fontWeight: FontWeight.normal)
  ),
),
PageViewModel(
  title: "Choose Your Language",
  body: "Switch freely between Arabic and English for a more comfortable user experience.",
  image:  Center(
    child: LottieBuilder.asset("assets/lottie/Onboarding Page 1.json", width: 500, height: 300.0),
  ),
  decoration:  PageDecoration(
    pageColor: const Color.fromARGB(255, 255, 255, 255),
    titleTextStyle: GoogleFonts.caveat(fontSize: 50, fontWeight: FontWeight.bold),
    bodyTextStyle: GoogleFonts.arima(fontSize: 20, fontWeight: FontWeight.normal),
    
    
    
  ),
)
      ],

      next: const Icon(Icons.arrow_forward,size: 30,),
      
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600,color:Color.fromARGB(255, 25, 19, 19),fontSize: 20)),
      onDone: () {
        
       Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => const App()),
       );
     },
      

    );


  }
}