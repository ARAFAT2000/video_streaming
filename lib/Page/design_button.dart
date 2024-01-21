import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  String title;
  final VoidCallback onTap;
  final bool isloading;
  ButtonDesign({super.key,required this.title,required this.onTap,this.isloading=true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child:isloading? Text(title):Text('Blasnk'),
      ),
    );
  }
}
