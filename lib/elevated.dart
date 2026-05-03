import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text; 
  final Color background;
  final Color? borderColor;
final double? borderWidth;
  
  const ElevatedButtonWidget({super.key, required this.text,  required this.background,  this.borderColor,  this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(400, 40),backgroundColor: background,side: BorderSide(width: borderWidth??0,color: borderColor??Colors.transparent),shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ) ),onPressed: (){},child: 
            Text(text,style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 0, 0, 0)),),
                           
              
              
              );
  }

}