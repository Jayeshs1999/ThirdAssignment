import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myWidget());
}

class myWidget extends StatelessWidget {
  bool Selected=false;


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          title: Text("Simple Widgets"),
          actions: [
            Icon(Icons.wifi_off,)
          ],

        ),


           drawer: Drawer(


          child: ListView(
            children: [
             new Container(

               child: new DrawerHeader(child: new CircleAvatar(
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(100),
                   child: Image.asset('image/jayesh.jpg'),
                 ),
               )),
               color: Colors.greenAccent,
             ),

Padding(padding: EdgeInsets.only(top: 10,left: 10,right: 10),

             child: new Container(
                color:Colors.lightBlueAccent,
                child: new Column(
                  children: [
                    Text("Hello Users !",style: TextStyle(fontSize: 30.0,color:Colors.yellow),),
                    Divider(thickness: 2.0,color: Colors.yellow,),
                    ListTile(
                      title: Text("New Group",style: TextStyle(fontSize: 21.0),),
                      leading: Icon(Icons.group),
                      onTap: (){
                        debugPrint(" You tap on New Group ");
                      },
                    ),
                    Divider(thickness: 1.0,color :Colors.yellow),
                    ListTile(
                      title: Text("Contact ",style: TextStyle(fontSize: 21.0),),
                      leading: Icon(Icons.contacts),
                      onTap: (){
                        debugPrint(" You tap on Contact ");
                      },

                    ),
                    Divider(thickness: 1.0,color: Colors.yellow,),
                    ListTile(
                      title: Text("Calls",style: TextStyle(fontSize: 21.0),),
                      leading: Icon(Icons.call_sharp),
                      onTap: (){
                        debugPrint(" You tap on Calls ");
                      },
                    ),
                    Divider(thickness: 1.0,color: Colors.yellow,),
                    ListTile(
                      title: Text("People Nearby",style: TextStyle(fontSize: 21.0),),
                      leading: Icon(Icons.nature_people_sharp),
                      onTap: (){
                        debugPrint(" You tap on People Nearby ");
                      },
                    ),
                    Divider(thickness: 1.0,color: Colors.yellow,),
                    ListTile(
                      title: Text("Setting",style: TextStyle(fontSize: 21.0),),
                      leading: Icon(Icons.settings),
                      onTap: (){
                        debugPrint(" You tap on Setting");
                      },
                    ),
                    Divider(thickness: 1.0,color: Colors.yellow,),
                    ListTile(
                      title: Text("Log Out",style: TextStyle(fontSize: 21.0),),
                      leading: Icon(Icons.logout),
                      onTap: (){
                        debugPrint(" You tap on Log Out");
                      },
                    ),

                  ],
                ),
              )

)],
          )
        ),

        body: Container(
          child: ListView(
            children: [
              Center(

                  child:Padding(padding: EdgeInsets.all(15),
                      child: Title(
                      color: Colors.yellowAccent,
                      child: Text("Select the Source(From Mumbai to Goa)",
                        style: TextStyle(fontSize: 20.0,color: Colors.indigoAccent,
                            backgroundColor: Colors.yellowAccent,fontFamily: FontWeight.bold.toString()),
                      )))),

             FittedBox(
               child :Row(
               children: [
                 Icon(
                   Icons.airplanemode_active,
                   size: 60.0,
                 ),
                 Icon(Icons.directions_railway,size: 60.0),
                 Icon(Icons.bus_alert,size: 60.0,),
                 Icon(Icons.car_rental,size: 60.0,),


               ],
             )),

              Container(height: 10.0,),
             FittedBox(
               child :Row(
                children: [
                  ElevatedButton(onPressed: setState,

                      child: Text("Airplane")),
                  Container(width: 5.0,),
                  ElevatedButton(onPressed: setState,
                      child: Text("Railway")),
                  Container(width: 5.0,),
                  ElevatedButton(onPressed: setState,
                      child: Text("Bus")),
                  Container(width: 5.0,),
                  ElevatedButton(onPressed: setState,
                      child: Text("Car")),
                ],
              )),
              Container(height: 10.0,),

              _getImage(),
              Container(height: 10.0,),
               Text("This Is The Changeble Text ",
                 style: TextStyle(color: Selected?Colors.green:Colors.red),),
              Container(height: 10.0,),
              ElevatedButton(onPressed: (){
                setState(){
                  this.Selected=!Selected;
                }
              }
                  , child: Text("Click Here To change Backround Color",)),


              Icon(Icons.home_outlined,size: 120.0),
              Icon(Icons.phone,size: 120.0,),
              Text("this is my first flutter project in this project We learn about  buttons ,"
                  "images,StatefullWidget ,StatelessWidget,Icons and so on",
                style: TextStyle(
                  fontSize: 50
                ))
            ],
          ),
        ),
      ),
    );
  }
  void setState(){
    
  }


}
class _getImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   AssetImage assetImage=AssetImage('image/sec.jpg');
   Image images=Image(image: assetImage,width: 150.0,height: 150.0,);
   return Container(child: images,);
  }

}



