import 'dart:io';

import 'package:flutter/material.dart';
import 'package:task/profile/profile_page/profile_page.dart';
import '../../first_screen.dart';
import '../home_widget/home_widget.dart';

class MyHomePage extends StatelessWidget {
  final String ? title;
  final String ? body;
  final List <File> ? image;
  const MyHomePage({this.image , this.title, this.body ,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
        }, icon: Icon(Icons.account_box))],
        
        title: Text("The ${title ?? "Tree"}"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            image == null || image!.isEmpty ? Image.asset(height: 300, width: 300, "assets/R.png")
            : Image.file(height: 300,width: 300,fit: BoxFit.cover,image![0]),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                favouriteWidget(),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.justify,
                body ?? " hello",
              ),
            ),

            image == null || image!.isEmpty ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MySeason(url: "assets/tree1.jpg",),
                MySeason(url: "assets/springTree.jpg",)

              ],
            ) :
                SizedBox(
                  height: 500,
                  child: GridView.builder(
                    itemBuilder: (context, index)=> Image.file(image![index],height: 200,width: 200,fit: BoxFit.cover,),

                    itemCount: image!.length,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10)
                  ),
                )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => firstScreen()));
      },
          child: Icon(Icons.add)),
    );
  }
}
