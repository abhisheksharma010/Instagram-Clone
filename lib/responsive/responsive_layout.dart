import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';


class ResponsiveLayout extends StatelessWidget{


  const ResponsiveLayout({super.key,required this.webscreen,required this.mobilescreen});
  final Widget webscreen;
  final Widget mobilescreen;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth> webScreenSize){
        //webscreen
        return webscreen;
      }
      //mobilescreen
      return mobilescreen;
    },
    );
  }

}