import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(
      MaterialApp(
          home: Homepage(),
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,

        ),
      )
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        actions: [
          IconButton(
              icon: Icon(FontAwesomeIcons.bell),
              onPressed: null)
        ],
        elevation: 0,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,fontSize: 20,
          )
        ),

        iconTheme: IconThemeData(
          color: Colors.white,

        ),
        backgroundColor: Colors.deepPurple,


      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: null, accountEmail: null),

          ],
        ),
      ),


        body: Container(

          color:Colors.cyanAccent,
          padding: EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16),)
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          margin:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Current balnace',style: TextStyle(color: Colors.white,
                                  fontSize: 20),),
                              Text('Euro' ,style: TextStyle(color: Colors.white,
                                  fontSize: 20),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin:  EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$32,454',style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,
                                  fontSize: 30),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                  borderRadius: BorderRadius.circular(16)
                                ),

                                child: Text('+3.5%',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                    fontSize: 20),

                              ),

                              ),


                            ],
                          ),
                        ),
                        SizedBox(height: 90,),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Row(
                            children: [
                              Text('3.2512 Euro',style: TextStyle(color: Colors.white,
                                  fontSize: 20),),
                            ],
                          ),
                        )

                      ],
                    ),

                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(14),
                      gradient: SweepGradient(
                            colors: [
                            Colors.red,
                              Colors.orangeAccent,
                            ],

                        ),


                    ),
                  ),
                ),

Container(
  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      Expanded(child:   RaisedButton.icon(onPressed: null,
        icon: Icon(FontAwesomeIcons.levelUpAlt),
        color: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text('Send'),
      ),),

SizedBox(width: 50,),


      Expanded(child: RaisedButton.icon(onPressed: null,
        icon: Icon(FontAwesomeIcons.levelDownAlt),
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text('Receive'),
      ),),
    ],
  ),
),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,),
                  alignment: Alignment.topLeft,
                  child: Text("currnecy",style: TextStyle(fontSize: 20),),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                            leading: CircleAvatar(
                              radius: 20,

                              child: Icon(FontAwesomeIcons.dollarSign,color: Colors.red,),
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            title: Text('American Dollar',style: TextStyle(fontStyle: FontStyle.italic),),
                            trailing: Text("\$8,000"),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                            leading: CircleAvatar(
                              radius: 20,

                              child: Icon(FontAwesomeIcons.dollarSign,color: Colors.red,),
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            title: Text('Indian Rupee',style: TextStyle(fontStyle: FontStyle.italic),),
                            trailing: Text("\$8,000"),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                            leading: CircleAvatar(
                              radius: 20,

                              child: Icon(FontAwesomeIcons.dollarSign,color: Colors.red,),
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            title: Text('Euro',style: TextStyle(fontStyle: FontStyle.italic),),
                            trailing: Text("\$8,000"),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                            leading: CircleAvatar(
                              radius: 20,

                              child: Icon(FontAwesomeIcons.dollarSign,color: Colors.red,),
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            title: Text('Canadian Dollar',style: TextStyle(fontStyle: FontStyle.italic),),
                            trailing: Text("\$8,000"),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                            leading: CircleAvatar(
                              radius: 20,

                              child: Icon(FontAwesomeIcons.dollarSign,color: Colors.red,),
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            title: Text('Yuan',style: TextStyle(fontStyle: FontStyle.italic),),
                            trailing: Text("\$8,000"),


                          ),
                        ),
                      ],
                    )

                  )
                ),

              ],
            ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.wallet),
            title: Text("Wallet"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            title: Text("Search"),

          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ticketAlt),
            title: Text("Coupons"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userAlt),
            title: Text("Account"),

          ),

        ],
        currentIndex: 0,
        onTap: (i){
          print(i);
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 20, 0, 100),

      ),
    );
  }
}