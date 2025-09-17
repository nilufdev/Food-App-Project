import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar:AppBar(
        
        title: Container(
          margin: EdgeInsets.all(10),
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last Bite, don\'t wait',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15,
              ),
            ),
            
            Text('Find your favourite food', style: TextStyle(fontSize: 17),),
            
          ],
        ),),
        
        actions: [
     
            Ink(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(),
            ),
            child:IconButton(
            
            onPressed: (){print('cart pressed');},
            icon: Icon(Icons.shopping_bag_outlined),
          ),),
          
          SizedBox(width: 10),
          
          Ink(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(),
            ),
            child:Stack(children:[IconButton(
            onPressed: () {
              print('notification pressed');
            },
            icon: Icon(Icons.notifications_outlined),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),     
          ],),),
          
          SizedBox(width: 20),
        ],
      ),
      
      body: Padding(
        padding: EdgeInsets.all(20),
        child:Column(
        children: [
        
          Row(children: [
            Expanded(child:TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'feeling hungry?',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),),
            SizedBox(width:10),
            Stack(children:[
          Container(
         padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ), ), Positioned(
            left: 8,
            top: 8,
            child:Icon(Icons.filter_alt, color: Colors.white),),
            ],),
          ],),
          SizedBox(height: 15),
          // today's special card
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://raw.githubusercontent.com/nilufdev/Food-App-Project/refs/heads/main/assets/pz-2.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
      
          ),
          
        ],
      ),
        ),
    );
  }
}
