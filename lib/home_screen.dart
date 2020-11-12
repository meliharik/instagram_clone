import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/add_screen.dart';
import 'package:instagram/notification_screen.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/search_screen.dart';

const Color kBackGroundColor = Color(0xff272936);
const Color kForGroundColor = Color(0xff3d3f50);

String _randomurl2 = "https://picsum.photos/200/300";
String _randomurl = "https://picsum.photos/200";

class HomeScreen extends StatefulWidget {
  HomeScreen(this.controller);

  static final String id = 'home_screen';
  final ScrollController controller;

  @override
  _HomeSceenState createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeScreen> {

  ScrollController scrollController;
  String _randomurl2 = "https://picsum.photos/200/300";
  String _randomurl = "https://picsum.photos/200";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Scaffold(
                  backgroundColor: kBackGroundColor,
                  body: ListView(
                    children: <Widget>[
                      _stories,
                      Divider(height: 0, color: Color(0xff303030)),
                      _postcard,
                      _postcard,
                      _postcard,
                      _postcard,
                      _postcard,
                      _postcard,
                      _postcard,
                      _postcard,
                      _postcard,
                    ],
                  ),
                ),
              )
            ],
          ),
          Bottomnavigationbar(),
        ],
      ),
    );
  }

  Widget get _appbar => AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: kForGroundColor,
    title: Text('Instagram', style: TextStyle(color: Colors.white, fontFamily: 'Cookie', fontSize: 30, fontWeight: FontWeight.w600),),
    leading: Icon(Icons.camera_alt, color: Colors.white, size: 25,),
    titleSpacing: 0,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(Icons.tv, color: Colors.pink, size: 25,),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0,bottom: 8),
        child: Transform.rotate(
            child: Icon(Icons.send, color: Colors.orange, size: 25,),
          angle: 100,
        ),
      ),
    ],
  );

  Widget get _stories => Container(
    color: kBackGroundColor,
    height: 120,
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.00,
                      width: 70.00,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.lightBlueAccent,
                                Colors.blue,
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
                              radius: 31,
                              backgroundImage: NetworkImage(_randomurl),
                            ),
                          )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('Your Story', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white70,
                  ),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.00,
                      width: 70.00,
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
                              radius: 31,
                              backgroundImage: NetworkImage(_randomurl2),
                            ),
                          )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('That\'s an', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.00,
                      width: 70.00,
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
                              radius: 31,
                              backgroundImage: NetworkImage(_randomurl2),
                            ),
                          )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('Example', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.00,
                      width: 70.00,
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
                              radius: 31,
                              backgroundImage: NetworkImage(_randomurl2),
                            ),
                          )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('That\'s an', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.00,
                      width: 70.00,
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
                              radius: 31,
                              backgroundImage: NetworkImage(_randomurl2),
                            ),
                          )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('Example', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.00,
                      width: 70.00,
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
                              radius: 31,
                              backgroundImage: NetworkImage(_randomurl2),
                            ),
                          )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('That\'s an', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 70.00,
                      width: 70.00,
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
                              radius: 31,
                              backgroundImage: NetworkImage(_randomurl2),
                            ),
                          )
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('Example', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    ),

  );

  Widget get _postcard => Container(
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(15),
    height: 450,
    decoration: BoxDecoration(
      color: kForGroundColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CircleAvatar(radius: 18, backgroundImage: NetworkImage(_randomurl)),
        SizedBox(width: 10),
        Text(
          'melihify',
          style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
        ),
        Spacer(),
        Icon(Icons.more_horiz,color: Colors.white,)
      ],
    ),
        Container(
          height: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(_randomurl2)),
          ),
        ),
        Row(
          children: <Widget>[
            Icon(Icons.favorite, color: Colors.redAccent),
            Text('1.245', style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
            SizedBox(width: 20),
            Icon(Icons.chat_bubble_outline,color: Colors.white,),
            Text(' 54', style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
            Spacer(),
            Icon(Icons.bookmark_border,color: Colors.white,),
          ],
        )
      ],
    ),
  );

  }

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;
    path.moveTo(0, sh * 0.35);
    path.lineTo(sw * 0.3, sh * 0.35);
    path.cubicTo(sw * 0.4, sh * 0.35, sw * 0.4, 0, sw * 0.5, 0);
    path.cubicTo(sw * 0.6, 0, sw * 0.6, sh * 0.35, sw * 0.7, sh * 0.35);
    path.lineTo(sw, sh * 0.35);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Bottomnavigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          IgnorePointer(
            child: Container(
              height: 110,
              margin: EdgeInsets.only(bottom: 50),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    kBackGroundColor,
                    kBackGroundColor.withOpacity(0.01),
                  ],
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: BottomBarClipper(),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: kForGroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25,10,25,10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.home,size: 28,color: Colors.white,),
                    onPressed: (){
                      Navigator.pushNamed(context, HomeScreen.id);
                    },),
                    IconButton(icon: Icon(Icons.search,size: 28,color: Colors.white70,),
                    onPressed: (){
                      Navigator.pushNamed(context, SearchScreen.id);
                    },),
                    Container(
                      width: 60,
                      height: 90,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.orange.shade400.withOpacity(0.6),
                            Colors.pink,
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepOrangeAccent.withOpacity(0.3),
                            offset: Offset(0,10),
                            blurRadius: 20,
                          ),
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: FittedBox(
                        child: Text('+',style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                    IconButton(icon: Icon(Icons.favorite_border,size: 28,color: Colors.white70,),
                    onPressed: (){
                      Navigator.pushNamed(context, NotificationScreen.id);
                    },),
                    IconButton(icon: CircleAvatar(
                      radius: 13,
                      backgroundImage: NetworkImage(_randomurl),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, ProfileScreen.id);
                    },),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


/*Container(
    height: 50,
    color: Color(0xFF1D1D1D),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home,size: 30,color: Colors.white,),
          onPressed: (){
            Navigator.pushNamed(context, HomeScreen.id);
          },
        ),
        IconButton(
          icon: Icon(Icons.search,size: 30, color: Colors.white70,),
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
  );*/

/*Container(

    color: Colors.black,
    child: Wrap(
      children: <Widget>[
        ListTile(
          title: Wrap(
            runSpacing: 0,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(_randomurl2),
                        radius: 17,
                      ),
                    ),
                    Container(
                      width: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('melihify', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.add_circle_outline,color: Colors.white, size: 25,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              _placeHolderField,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 8.0),
                        child: Icon(Icons.favorite_border,color: Colors.white,size: 35,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:15.0),
                        child: Icon(Icons.comment, color: Colors.white,size: 30,),
                      ),
                      Icon(Icons.share, color: Colors.white, size: 30,),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.save_alt,color: Colors.white, size: 30,),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Liked by ",style: TextStyle(color: Colors.white70),),Text("melihify", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      Text(" and ",style: TextStyle(color: Colors.white70),), Text("others", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("evrimagaci ", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Text("Explanation 1 2 3", style: TextStyle(color: Colors.white70),),
                    ],
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text("View all 167 comments", style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white.withOpacity(0.7)), textAlign: TextAlign.start,),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(_randomurl),
                          radius: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(" Add a comment...                     ", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20,color: Colors.white.withOpacity(0.7)),),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.sentiment_satisfied,color: Colors.white.withOpacity(0.7),),
                                Icon(Icons.whatshot,color: Colors.white.withOpacity(0.7),),
                                Icon(CupertinoIcons.add_circled,color: Colors.white.withOpacity(0.7),),
                              ],)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text("3 hours ago ", style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                        ),),
                        Text(" See Translation", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );*/