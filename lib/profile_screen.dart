import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/notification_screen.dart';
import 'package:instagram/search_screen.dart';
import 'home_screen.dart';

const Color kBackGroundColor = Color(0xff272936);
const Color kForGroundColor = Color(0xff3d3f50);
String _randomurl2 = "https://picsum.photos/200/300";
String _randomurl = "https://picsum.photos/200";

class ProfileScreen extends StatefulWidget {
  static final String id = 'profile_screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: _drawer,
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _getPostsList(context),
          _getHeader,
          _getBottomBarShadow(context),
          Bottomnavigationbar(),
        ],
      ),
    );
  }

  Widget get _drawer => Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 81,
          color: kBackGroundColor,
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 35.0),
              child: Text('melihify',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
        ),
        Container(
          color: kBackGroundColor,
          child: ListTile(
            leading: Icon(Icons.settings_backup_restore,size: 30,color: Colors.white,),
            title: Text('Archive', style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap: () => {
              Navigator.pop(context),
            },
          ),
        ),
        Container(
          color: kBackGroundColor,
          child: ListTile(
            leading: Icon(Icons.timelapse,size: 28,color: Colors.white,),
            title: Text('Your Activity', style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap: () => {
              Navigator.pop(context),
            },
          ),
        ),
        Container(
          color: kBackGroundColor,
          child: ListTile(
            leading: Icon(Icons.settings_overscan,size: 28,color: Colors.white,),
            title: Text('Nametag', style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap: () => {
              Navigator.pop(context),
            },
          ),
        ),
        Container(
          color: kBackGroundColor,
          child: ListTile(
            leading: Icon(Icons.save_alt,size: 28,color: Colors.white,),
            title: Text('Saved', style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap: () => {
              Navigator.pop(context),
            },
          ),
        ),
        Container(
          color: kBackGroundColor,
          child: ListTile(
            leading: Icon(Icons.stars,size: 28,color: Colors.white,),
            title: Text('Close Friends', style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap: () => {
              Navigator.pop(context),
            },
          ),
        ),
        Container(
          color: kBackGroundColor,
          child: ListTile(
            leading: Icon(Icons.person_add,size: 28,color: Colors.white,),
            title: Text('Discover People', style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap: () => {
              Navigator.pop(context),
            },
          ),
        ),
        Container(
          height: 210,
          color: kBackGroundColor,
        ),
        SizedBox(
          height: 0.5,
          child: Container(
              color: Colors.grey
          ),
        ),
        Container(
          color: kBackGroundColor,
          child: ListTile(
            leading: Icon(Icons.settings,size: 28,color: Colors.white,),
            title: Text('Settings', style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap: () => {
              Navigator.pop(context),
            },
          ),
        ),
      ],
    ),
  );

  Widget get _getHeader {
    return Positioned(
      top: 0,
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
        height: 350,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Color(0xff3d3f50),
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff3d3f50),
                  blurRadius: 15,
                  offset: Offset(0, 5))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.keyboard_arrow_down,size: 25,color: Colors.white,),
                  onPressed: (){
                    showModalBottomSheet(context: context,
                        builder: (BuildContext bc){
                          return Container(
                            height: 180,
                            color: kBackGroundColor,
                            child: Column(
                              children: <Widget>[
                                Container(
                                    color: kBackGroundColor,
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            color: kBackGroundColor,
                                            child: Container(
                                              width: 50,
                                              height: 6,
                                              alignment: Alignment.center,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            trailing: Stack(
                                              children: <Widget>[
                                                Container(
                                                  height: 30.00,
                                                  width: 30.00,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    border: Border.all(width: 0.00, color: Colors.blue,),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Positioned.fill(
                                                  child: Align(
                                                      alignment: Alignment.center,
                                                      child: Container(
                                                        height: 10,
                                                        width: 10,
                                                        //color: Colors.black,
                                                        decoration: BoxDecoration(
                                                          color: kBackGroundColor,
                                                          shape: BoxShape.circle,
                                                        ),
                                                      )),
                                                ),
                                              ],
                                            ),
                                            title: Text('melihify',style: TextStyle(color: Colors.white),),
                                            leading: CircleAvatar(
                                              radius: 31,
                                              backgroundImage: NetworkImage(_randomurl2),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            title: Text('Add Account',style: TextStyle(color: Colors.white),),
                                            leading: Stack(
                                              children: <Widget>[
                                                Container(
                                                  height: 60.00,
                                                  width: 60.00,
                                                  decoration: BoxDecoration(
                                                    color: kBackGroundColor,
                                                    border: Border.all(width: 2.00, color: Colors.white70,),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Positioned.fill(
                                                  child: Align(
                                                      alignment: Alignment.center,
                                                      child: Icon(Icons.add,color: Colors.white,size: 28,)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                ),

                              ],
                            ),
                          );
                        }
                    );
                  },),
                Text('melihify',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white)),
                IconButton(icon: Icon(Icons.menu,color: Colors.white,),
                  onPressed: (){
                    _scaffoldKey.currentState.openEndDrawer();
                  },)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 10),
            Text(
              'Melih Arık',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,color: Colors.white),
            ),
            Text('I code my life', style: TextStyle(fontSize: 14,color: Colors.white)),
            SizedBox(height: 10),
            _getUserStats(),
            SizedBox(
              height: 10,
            ),
            _getUserBtns(),
          ],
        ),
      ),
    );
  }
}



_getUserBtns() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.orange.shade400, Colors.pink]),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          'Follow',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade300),
        child: Icon(Icons.near_me),
      )
    ],
  );
}

_getUserStats() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              border:
              Border(right: BorderSide(color: Colors.grey, width: 0.5))),
          child: Column(
            children: <Widget>[
              Text('56',style: TextStyle(color: Colors.white),),
              Text('Posts', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              border:
              Border(right: BorderSide(color: Colors.white70, width: 0.5))),
          child: Column(
            children: <Widget>[
              Text('2852',style: TextStyle(color: Colors.white)),
              Text('Followers', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Text('452',style: TextStyle(color: Colors.white)),
            Text('Following', style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    ],
  );
}

_getPostsList(context) {
  return Container(
    color: kBackGroundColor,
    child: GridView.count(
      padding: EdgeInsets.fromLTRB(10, 320, 10, 110),
      crossAxisCount: 2,
      children: <Widget>[
        _getPost(context: context, image: NetworkImage(_randomurl2),),
        _getPost(context: context, image: NetworkImage(_randomurl2),),
        _getPost(context: context, image: NetworkImage(_randomurl2),),
        _getPost(context: context, image: NetworkImage(_randomurl2),),
        _getPost(context: context, image: NetworkImage(_randomurl2),),
        _getPost(context: context, image: NetworkImage(_randomurl2),),
      ],
    ),
  );
}

_getPost({context, ImageProvider image}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: MediaQuery.of(context).size.width * 0.4,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: image,
          ),
          borderRadius: BorderRadius.circular(20)),
    ),
  );
}

_getBottomBarShadow(context) {
  return Positioned(
    bottom: 0,
    child: Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.grey.withOpacity(0.8),
                Colors.grey.withOpacity(0.01),
              ])),
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
                    IconButton(icon: Icon(Icons.home,size: 28,color: Colors.white70,),
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
















/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/add_screen.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/notification_screen.dart';
import 'package:instagram/search_screen.dart';
import 'package:instagram/search_screen2.dart';

String _randomurl2 = "https://picsum.photos/200/300";
String _randomurl = "https://picsum.photos/200";

class ProfileScreen extends StatefulWidget {
  static final String id = 'profile_screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: NavDrawer(),
      appBar: _appbar,
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFF1D1D1D),
            height: 120,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('14',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                      Text('Posts',style: TextStyle(color: Colors.white70,fontSize: 18),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('768',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                      Text('Followers',style: TextStyle(color: Colors.white70,fontSize: 18),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('601',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                      Text('Following',style: TextStyle(color: Colors.white70,fontSize: 18),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 500,
            height: 50,
            color: Color(0xFF1D1D1D),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Melih Arık', style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  Text('developer', style: TextStyle(color: Colors.white70,fontSize: 17),)
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xFF1D1D1D),
            width: 500,
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text('Edit Profile',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
         _stories,
          DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D),
                    border: BorderDirectional(
                      bottom: BorderSide(color: Colors.grey),
                    )
                  ),
                  child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.white,
                          tabs: <Widget>[
                            Tab(icon: Icon(Icons.crop_square,size: 30,),),
                            Tab(icon: Icon(Icons.person_pin,size: 30),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: TabBarView(
                    children: <Widget>[
                      GridView.count(
                        crossAxisCount: 3,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                        ],
                      ),
                      GridView.count(
                        crossAxisCount: 3,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1)
                            ),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              image: NetworkImage(_randomurl),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: _bottomnavigationbar,
    );
  }

  Widget get _appbar => AppBar(
    elevation: 0,
    backgroundColor: Color(0xFF1D1D1D),
    title: FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: (){
        showModalBottomSheet(context: context,
            builder: (BuildContext bc){
              return Container(
                height: 180,
                color: Colors.black,
                child: Column(
                  children: <Widget>[
                    Container(
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                color: Colors.black,
                                child: Container(
                                  width: 50,
                                  height: 6,
                                  alignment: Alignment.center,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                trailing: Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 30.00,
                                      width: 30.00,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(width: 0.00, color: Colors.blue,),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            //color: Colors.black,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              shape: BoxShape.circle,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                title: Text('melihify',style: TextStyle(color: Colors.white),),
                                leading: CircleAvatar(
                                  radius: 31,
                                  backgroundImage: NetworkImage(_randomurl),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text('Add Account',style: TextStyle(color: Colors.white),),
                                leading: Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 60.00,
                                      width: 60.00,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(width: 2.00, color: Colors.white70,),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Icon(Icons.add,color: Colors.white,size: 28,)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                    ),

                  ],
                ),
              );
            }
        );
      },
      child: Row(
        children: <Widget>[
          Text('melihify',style: TextStyle(color: Colors.white,fontSize: 22),),
          Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 22,),
          )
        ],
      ),
    ),
    automaticallyImplyLeading: false,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right:10.0),
        child: IconButton(icon: Icon(Icons.menu,color: Colors.white,size: 30,),onPressed: (){
          _scaffoldKey.currentState.openEndDrawer();
        }),
      ),
    ],
  );

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
            radius: 10,
            backgroundImage: NetworkImage(_randomurl),
          ),
        )
      ],
    ),
  );

  Widget get _stories => Container(
    color: Color(0xFF1D1D1D),
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
                        color: Color(0xFF1D1D1D),
                        border: Border.all(width: 2.00, color: Colors.white70,),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                          alignment: Alignment.center,
                          child: Icon(Icons.add,color: Colors.white,size: 35,)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('New', style: TextStyle(
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
                                Colors.grey.withOpacity(0.5),
                                Colors.grey.withOpacity(0.5),
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
                                Colors.grey.withOpacity(0.5),
                                Colors.grey.withOpacity(0.5),
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
                                Colors.grey.withOpacity(0.5),
                                Colors.grey.withOpacity(0.5),
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
                                Colors.grey.withOpacity(0.5),
                                Colors.grey.withOpacity(0.5),
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
                                Colors.grey.withOpacity(0.5),
                                Colors.grey.withOpacity(0.5),
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
                                Colors.grey.withOpacity(0.5),
                                Colors.grey.withOpacity(0.5),
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

}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 81,
            color: Colors.black,
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 35.0),
                child: Text('melihify',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.settings_backup_restore,size: 30,color: Colors.white,),
              title: Text('Archive', style: TextStyle(color: Colors.white,fontSize: 17),),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.timelapse,size: 28,color: Colors.white,),
              title: Text('Your Activity', style: TextStyle(color: Colors.white,fontSize: 17),),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.settings_overscan,size: 28,color: Colors.white,),
              title: Text('Nametag', style: TextStyle(color: Colors.white,fontSize: 17),),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.save_alt,size: 28,color: Colors.white,),
              title: Text('Saved', style: TextStyle(color: Colors.white,fontSize: 17),),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.stars,size: 28,color: Colors.white,),
              title: Text('Close Friends', style: TextStyle(color: Colors.white,fontSize: 17),),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.person_add,size: 28,color: Colors.white,),
              title: Text('Discover People', style: TextStyle(color: Colors.white,fontSize: 17),),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
          ),
          Container(
            height: 218,
            color: Colors.black,
          ),
          SizedBox(
            height: 0.5,
            child: Container(
              color: Colors.grey
            ),
          ),
          Container(
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.settings,size: 28,color: Colors.white,),
              title: Text('Settings', style: TextStyle(color: Colors.white,fontSize: 17),),
              onTap: () => {
                Navigator.pop(context),
              },
            ),
          ),
        ],
      ),
    );
  }
}
*/