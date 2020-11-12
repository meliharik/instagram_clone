import 'package:flutter/material.dart';
import 'package:instagram/add_screen.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/search_screen.dart';

String _randomurl2 = "https://picsum.photos/200/300";
String _randomurl = "https://picsum.photos/200";

class NotificationScreen extends StatefulWidget {
  static final String id = 'notification_screen';
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar,
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Stack(
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
                            child: Icon(Icons.person_add,color: Colors.white,size: 28,)),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:11.00,top:3.0),
                        child: Text('Follow Requests',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.00,top:3.0),
                        child: Text('Approve or ignore requests',style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Today',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
            ),
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'example, example2 ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'and ', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: '54 others ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'started', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: '\nfollowing you.', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 1h', style: TextStyle(color: Colors.grey, fontSize: 14))
                      ]
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'liked your comment:', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: '\n@example', style: TextStyle(color: Colors.blue,fontSize: 15)),
                        TextSpan(text: ' ben okeyliyorum', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 3h', style: TextStyle(color: Colors.grey, fontSize: 14))
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:54.0),
                  child: Container(
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       fit: BoxFit.fitWidth,
                       image: NetworkImage(_randomurl2),
                     )
                   ),
                  ),
                )
              ],
            )
          ),
          Container(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(_randomurl),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'mentioned you in a', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '\ncomment ', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '@example @example2', style: TextStyle(color: Colors.blue,fontSize: 15)),
                          TextSpan(text: '\nyeni sahneye çıkış sound umuz?',style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: ' 3h', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:22.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(_randomurl2),
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left:80.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.favorite_border,color: Colors.grey,size: 18,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text('Reply',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ),
          Container(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(_randomurl),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'mentioned you in a', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '\ncomment: ', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '@example', style: TextStyle(color: Colors.blue,fontSize: 15)),
                          TextSpan(text: ' 5h', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:66.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(_randomurl2),
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('This Week',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
            ),
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'You liked 3 posts tagged ', style: TextStyle(color: Colors.white,fontSize: 15,)),
                        TextSpan(text: '#flutter ', style: TextStyle(color: Colors.blue,fontSize: 15)),
                        TextSpan(text: '\nthis week. ', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 2d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: SizedBox(
                    width: 70,
                    height: 35,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      color: Colors.blue,
                      onPressed: (){},
                      textColor: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text('Follow',style: TextStyle(fontSize: 15),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 85.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(_randomurl),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'mentioned you in a', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '\ncomment: ', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '@example', style: TextStyle(color: Colors.blue,fontSize: 15)),
                          TextSpan(text: ' 4d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:66.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(_randomurl2),
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'liked your photo.', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 5d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:62.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('This Month',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
            ),
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'You liked 3 posts tagged ', style: TextStyle(color: Colors.white,fontSize: 15,)),
                        TextSpan(text: '#flutter ', style: TextStyle(color: Colors.blue,fontSize: 15)),
                        TextSpan(text: '\nthis week. ', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 2d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: SizedBox(
                    width: 70,
                    height: 35,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      color: Colors.blue,
                      onPressed: (){},
                      textColor: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text('Follow',style: TextStyle(fontSize: 15),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 85.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(_randomurl),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'mentioned you in a', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '\ncomment: ', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '@example', style: TextStyle(color: Colors.blue,fontSize: 15)),
                          TextSpan(text: ' 4d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:66.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(_randomurl2),
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'liked your photo.', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 5d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:62.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Earlier',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),),
            ),
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'You liked 3 posts tagged ', style: TextStyle(color: Colors.white,fontSize: 15,)),
                        TextSpan(text: '#flutter ', style: TextStyle(color: Colors.blue,fontSize: 15)),
                        TextSpan(text: '\nthis week. ', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 2d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: SizedBox(
                    width: 70,
                    height: 35,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      color: Colors.blue,
                      onPressed: (){},
                      textColor: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text('Follow',style: TextStyle(fontSize: 15),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 85.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(_randomurl),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'mentioned you in a', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '\ncomment: ', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '@example', style: TextStyle(color: Colors.blue,fontSize: 15)),
                          TextSpan(text: ' 4d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:66.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(_randomurl2),
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'liked your photo.', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 5d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:62.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'You liked 3 posts tagged ', style: TextStyle(color: Colors.white,fontSize: 15,)),
                        TextSpan(text: '#flutter ', style: TextStyle(color: Colors.blue,fontSize: 15)),
                        TextSpan(text: '\nthis week. ', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 2d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: SizedBox(
                    width: 70,
                    height: 35,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      color: Colors.blue,
                      onPressed: (){},
                      textColor: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: Text('Follow',style: TextStyle(fontSize: 15),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 85.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(_randomurl),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'mentioned you in a', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '\ncomment: ', style: TextStyle(color: Colors.white,fontSize: 15)),
                          TextSpan(text: '@example', style: TextStyle(color: Colors.blue,fontSize: 15)),
                          TextSpan(text: ' 4d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:66.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(_randomurl2),
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(_randomurl),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'example ', style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'liked your photo.', style: TextStyle(color: Colors.white,fontSize: 15)),
                        TextSpan(text: ' 5d', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:62.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(_randomurl2),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomnavigationbar,
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
          icon: Icon(Icons.favorite,size: 30, color: Colors.white,),
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
    elevation: 0,
    backgroundColor: Color(0xFF1D1D1D),
    title: Text('Activity'),
    automaticallyImplyLeading: false,
  );
}
