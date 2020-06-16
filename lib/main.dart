import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(name: "Sundar",)
    );
  }
}

class Another{
  String name;
  Another(){

    this.name="raja";
  }
Another.showname({String another}){

  this.name = another;

}



}
class Home extends StatefulWidget {

  final String name;
  Home({Key key, this.name}) : super(key: key);



  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:DefaultTabController(
        length: 2,
        child: Stack(
          children: <Widget>[
           Scaffold(
          body: TabBarView(
            children: [
             Image.network('https://www.worldtop2.com/wp-content/uploads/2019/04/shreya-rimal-e1554364571785.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            
            width: MediaQuery.of(context).size.width,)
,           Container(

  child:ListView(

    children: <Widget>[
       Image.network('https://www.worldtop2.com/wp-content/uploads/2019/04/shreya-rimal-e1554364571785.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            
            width: MediaQuery.of(context).size.width,),
             Image.network('https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            
            width: MediaQuery.of(context).size.width,),
             Image.network('https://images.unsplash.com/photo-1558981852-426c6c22a060?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            
            width: MediaQuery.of(context).size.width,)

   
    ],
  )
)
            
            ],
          ),

       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('')
          ),``
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
              title: Text('')
        
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,size: 73.0,),
          

            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(''),
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(''),
          ),
        
        ],
        currentIndex:0,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        onTap: null,
      ),
        ),
         
     Positioned(child:TabBar(
       labelColor: Colors.white,
              tabs: [
                Tab(child: Text("Following"),),
                Tab(child: Text("For you"),),
                
              ],
            ),
            ),

            
          ],
        ),
      ),
    );
      
  }
}

class Own extends BottomNavigationBarItem{

 Widget circularLogo(){

   return CircleAvatar(child: Icon(Icons.add));


  }

}