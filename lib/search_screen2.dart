import 'package:flutter/material.dart';
import 'package:instagram/add_screen.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/notification_screen.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/search_screen.dart';

String _randomurl2 = "https://picsum.photos/200/300";
String _randomurl = "https://picsum.photos/200";

class SearchScreen2 extends StatefulWidget {
  static final String id = 'search_screen2';
  @override
  _SearchScreen2State createState() => _SearchScreen2State();
}

class _SearchScreen2State extends State<SearchScreen2> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: TabBarView(
            children: <Widget>[
              FirstScreen(),
              SecondScreen(),
              Container(color: Colors.black,),
              FourthScreen(),
            ],
          ),
          appBar: _appbar,
          bottomNavigationBar: _bottomnavigationbar,
        ),
      ),
    );
  }

  Widget get _bottomnavigationbar => Container(
    height: 50,
    color: Color(0xFF1D1D1D),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home,size: 30,color: Colors.white70,),
          onPressed: (){
            Navigator.pushNamed(context, HomeScreen.id);
          },
        ),
        IconButton(
          icon: Icon(Icons.search,size: 30, color: Colors.white,),
          onPressed: (){
            Navigator.pushNamed(context, SearchScreen.id);
          },
        ),
        IconButton(
          icon: Icon(Icons.add_box,size: 30, color: Colors.white70,),
          onPressed: (){
            Navigator.pushNamed(context, AddScreen.id);
          },
        ),
        IconButton(
          icon: Icon(Icons.favorite_border,size: 30, color: Colors.white70,),
          onPressed: (){
            Navigator.pushNamed(context, NotificationScreen.id);
          },
        ),

        IconButton(
          onPressed: (){
            Navigator.pushNamed(context, ProfileScreen.id);
          },
          icon: CircleAvatar(
            radius: 13,
            backgroundImage: NetworkImage(_randomurl),
          ),
        )
      ],
    ),
  );

  Widget get _appbar => AppBar(
    bottom: TabBar(
      indicatorColor: Colors.white,
      tabs: <Widget>[
        //TODO hangisi seçilirse o white, diğerleri white70 olsun ve serach bardaki title değişsin
        Tab(child: Text('TOP',style: TextStyle(fontSize: 13),),),
        Tab(child: Text('ACCOUNTS',style: TextStyle(fontSize: 13),),),
        Tab(child: Text('TAGS',style: TextStyle(fontSize: 13),),),
        Tab(child: Text('PLACES',style: TextStyle(fontSize: 13),),),
      ],
    ),
    titleSpacing: 0,
    elevation: 0,
    backgroundColor: Color(0xFF1D1D1D),
    title: TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      autofocus: true,
      cursorColor: Colors.white70,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.white70,
          fontSize: 20,
        ),
      ),
    ),
    leading: IconButton(icon: Icon(Icons.arrow_back, size: 27,),onPressed: (){
      Navigator.pop(context);
    },),
  );
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Recent', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 17),),
              ),
              Container(
                  width: 500,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(_randomurl2),
                          radius: 25,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                            child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:211.0,top: 17),
                        child: Icon(Icons.close,color: Colors.white70,size: 20,),
                      ),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 57.00,
                                width: 57.00,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xFFD82B7D),
                                          Color(0xFFF3733D),
                                        ]
                                    )
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1.3,
                                          )
                                      ),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: NetworkImage(_randomurl2),
                                      ),
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:19.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 57.00,
                                width: 57.00,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xFFD82B7D),
                                          Color(0xFFF3733D),
                                        ]
                                    )
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1.3,
                                          )
                                      ),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: NetworkImage(_randomurl2),
                                      ),
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:19.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih Arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:211.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Recent', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 17),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  width: 500,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(_randomurl2),
                          radius: 25,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                            child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:212.0,top: 17),
                        child: Icon(Icons.close,color: Colors.white70,size: 20,),
                      ),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                    width: 500,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(_randomurl2),
                            radius: 25,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:22.0,bottom: 4.0,top: 5.0),
                              child: Text("melihify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Melih arık",style: TextStyle(color: Colors.white70,fontSize: 16),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:212.0,top: 17),
                          child: Icon(Icons.close,color: Colors.white70,size: 20,),
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0,left:16),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      //color: Colors.black,
                      height: 60.00,
                      width: 60.00,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(width: 1.00, color: Colors.white70,),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                          child: Icon(Icons.location_on,color: Colors.blue,size: 28,)),
                    ),
                  ],
                ),
                Text('   Nearby Places',style: TextStyle(color: Colors.blue,fontSize: 17),)
              ],
            ),
          )
        ],
      ),
    );
  }
}



