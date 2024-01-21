import 'package:flutter/material.dart';
import 'package:video_streaming/Widget/widget.dart';

import 'design_button.dart';





class HomePage extends StatefulWidget {
   HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int savedNumber = 0;
 bool Arafat=true,Mithila=false;
 TextEditingController numberController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Application'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                     height: 65,
                     width: 400,
                     decoration: BoxDecoration(
                       borderRadius:BorderRadius.circular(25),
                       color: Colors.grey
                     ),
                  child: Row(
                    children: [
                      SizedBox(width: 14,),
                   Arafat?   Container(

                     height: 45,
                     width:200,
                     decoration: BoxDecoration(
                         borderRadius:BorderRadius.circular(25),
                         color: Colors.yellow
                     ),
                     child: Center(child: Text('Arafat')),
                   ): GestureDetector(
                     onTap: (){
                       Arafat=true;
                       Mithila=false;
                       setState(() {

                       });
                     },
                     child: Container(
                         height: 45,
                         width:200,
                         decoration: BoxDecoration(
                             borderRadius:BorderRadius.circular(25),
                             color: Colors.white
                         ),
                         child: Center(child: Text('Arafat'))),
                   ),
                      SizedBox(width: 24,),
                   Mithila?  Container(
                        height: 45,
                        width:200,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(25),
                            color: Colors.yellow
                        ),
                        child: Center(child: Text('Mithila')),
                      ): GestureDetector(
                     onTap: (){
                       Arafat=false;
                       Mithila=true;
                       setState(() {

                       });
                     },
                     child: Container(
                         height: 45,
                         width:200,
                         decoration: BoxDecoration(
                             borderRadius:BorderRadius.circular(25),
                             color: Colors.white
                         ),
                         child: Center(child: Text('Mithila'))),
                   ),
                    ],
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100,),
            Container(
              color: Colors.yellow,
              child: SizedBox(
                height: 40,
                width: 150,

                child:PopupMenuButton(
                  surfaceTintColor: Colors.red,
                    onSelected: (value){
                     if(value=='Love'){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
                     }else if(value =='Arafat'){

                     }else {

                     }
                    },
                    itemBuilder: (context){
                      return [
                        PopupMenuItem(
                            child: Text('Arafat'),
                        value: 'Arafat',),
                        PopupMenuItem(
                            child: Text('Mithila'),
                          value: 'Mithila',),
                        PopupMenuItem(
                            child: Text('Love'),
                          value: 'Love',),
                      ];
                    })
              ),
            ),
            SizedBox(height: 50,),




          ],
        ),
      ),
    );
  }
}
