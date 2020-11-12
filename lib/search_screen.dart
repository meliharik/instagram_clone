import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/add_screen.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/notification_screen.dart';
import 'package:instagram/profile_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/search_screen2.dart';

const Color kBackGroundColor = Color(0xff272936);
const Color kForGroundColor = Color(0xff3d3f50);

class SearchScreen extends StatefulWidget {
  static final String id = 'search_screen';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                body: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: _suggestions,
                    ),
                    SliverStaggeredGrid.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      children: List.generate(18, (int i){
                        return _gridItem(i);
                      }),
                      staggeredTiles: List.generate((18),
                              (int index){
                            int remain = index % 18;
                            if(remain == 1 || remain == 9){
                              return StaggeredTile.count(2, 2);
                            }
                            return StaggeredTile.count(1, 1);
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
          Bottomnavigationbar(),
        ],
      ),
    );
  }

  Widget get _appbar => AppBar(
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(Icons.settings_overscan),
      )
    ],
    leading: IconButton(icon: Icon(Icons.search, size: 35,),onPressed: (){
  Navigator.pushNamed(context, SearchScreen2.id);
  },),
    titleSpacing: 0,
    elevation: 0,
    backgroundColor: Color(0xFF1D1D1D),
    title: FlatButton(
        child: Text('Search                                                        ', style: TextStyle(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w600),),
    onPressed: (){
      Navigator.pushNamed(context, SearchScreen2.id);
    },),
  );

  Widget get _suggestions => Container(
    height: 35,
    color: Color(0xFF1D1D1D),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _tagItem("    Made    "),
        _tagItem("    With    "),
        _tagItem("    Flutter    "),
        _tagItem("    Art    "),
        _tagItem("    Science & Tech    "),
        _tagItem("    Music    "),
        _tagItem("    Arduino    "),
      ],
    ),
  );

  Widget _tagItem(String title){
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
      child: Container(child: Text(title, style: TextStyle(color: Colors.white),), margin: EdgeInsets.all(5),),
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
    );
  }

  Widget _gridItem(int i){
    return Container(child: Image.network(_randomurl2,fit: BoxFit.fill,),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
    ),);
  }

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
              height: 100,
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
                    IconButton(icon: Icon(Icons.search,size: 28,color: Colors.white,),
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
                    IconButton(icon: Icon(Icons.perm_identity,size: 28,color: Colors.white70,),
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
