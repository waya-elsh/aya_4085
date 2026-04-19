import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            
            children: [
              SizedBox(height: 100,),
              Center(
                child: Image.asset("assets/image/IMG_2224.JPG",width: 200,),
              ),
              SizedBox(height: 20,),
              Text("Waya ",style: GoogleFonts.caveat(fontSize: 40,color: const Color.fromARGB(255, 15, 16, 16)),),
              SizedBox(height: 30,),
              TextField(decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: const Color.fromARGB(44, 193, 191, 191)
                
              ),),
              SizedBox(height: 35,),

              TextField(decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: const Color.fromARGB(44, 193, 191, 191)
                
                
              ),),
              SizedBox(height: 20,),
              Align(alignment:AlignmentGeometry.centerRight,child: Text("forget Password?",style: TextStyle(decoration: TextDecoration.underline,color: const Color.fromARGB(255, 37, 160, 236),fontSize: 15),)),
              
              SizedBox(height: 40,),
              
              Container(
                width: double.infinity,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 246, 235, 120),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),onPressed: (){}, child: 
                Text("Login",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 0, 0, 0)),),
                
                
                ),
              ),
              SizedBox(height: 30,),
              
              Text("or"),
              SizedBox(height: 10,),

              
              Container(

                width: double.infinity,
               
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 255, 255),side: BorderSide(width: 1,color: Colors.yellow),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ) ),onPressed: (){},child: 
                Text("Login With Google ",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 0, 0, 0)),),
                             
                
                
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have as account?"),
                  Text("Sing Up",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)
                ],
              )
              
              
              
            ],
          ),
        )
      
      ),
    );
  }
}
