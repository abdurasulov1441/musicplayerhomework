import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 34, 21, 52), 
            Color.fromARGB(255, 71, 34, 13),
            ])
          ),

          child: Column(children: [
          
          
          MenuBasic(),
          SearchCont(),
          ListMusic(),
          ListentMusic(),

          ],)
        ),
      ),
    );
  }
}


class MenuBasic extends StatelessWidget {
  const MenuBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      child: Column(children: [
        Text('Home',style: TextStyle(fontSize: 20,color: Colors.white),),
        SizedBox(height: 5,),
        Container(
          width: 220,
          height: 30,
          color: Color.fromARGB(255, 18, 20, 46),
          padding: EdgeInsets.only(left: 5,right: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text('Album',style: TextStyle(color: Colors.white,fontSize: 15),),
            Text('Playlist',style: TextStyle(color: Colors.white,fontSize: 15),),
            Text('Settings',style: TextStyle(color: Colors.white,fontSize: 15),),
   
            
            ],),
        ),
      ],),
    ));
  }
}


class SearchCont extends StatelessWidget {
  const SearchCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: 30,
          color: Color.fromARGB(255, 18, 20, 46),
          margin: EdgeInsets.only(left: 20,right: 20,top: 30),
          child: Row(children: [
SizedBox(width: 10,),
            Icon(Icons.search,color: Color.fromARGB(100, 255, 255, 255),),
            SizedBox(width: 10,),
            Text('search',style: TextStyle(color: const Color.fromARGB(100, 255, 255, 255),fontSize: 15))

          ],),


    );
  }
}


class ListMusic extends StatelessWidget {
  const ListMusic({super.key});




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        SizedBox(width: 20,height: 100,),
     Text('My songs',style: TextStyle(color: Colors.white,fontSize: 30),),
      
      ],)
      
 
      );
  }
}


class ListentMusic extends StatelessWidget {
  const ListentMusic({super.key});

static List <String> name = [
  'DVRST',
  'Eminem',
  'Sahara',
  'J.Cole',
  'Kanye West',
  'NGNX',
  'Everest',
  'Next Time'

];


static List <String> secondName = [
  'Dream Space',
  'Close eyes',
  'Slan',
  'Henson',
  'Alan walker',
  'Metamorphothis',
  'Yellow claw',
  'Burak Yeter',

];

static List <String> images = [
'images/1.png',
'images/2.jpg',
'images/3.jpg',
'images/1.png',
'images/2.jpg',
'images/3.jpg',
'images/1.png',
'images/2.jpg',
'images/3.jpg',
'images/1.png',
'images/2.jpg',



];




  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        child:
      
      ListView.separated(
        
        itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Row(children: [
              
                //Icon(Icons.media_bluetooth_off,size: 50,),
                Card(child: Image.asset(images[index],width: 100,height: 100,),
                
                ),


                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(name[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                Text(secondName[index],style: TextStyle(color: Colors.white,fontSize: 15),),
                ],)

              
              // Column(children: [
              //   Text(name[index],style: TextStyle(color: Colors.white),)
              // ],)
              ],),
          );
          
          
      
        }, 
        separatorBuilder: (context,index){
          return SizedBox();
          
          
          
        }, 
        itemCount: name.length)
      
      
      ,),
    );
    
  }
}