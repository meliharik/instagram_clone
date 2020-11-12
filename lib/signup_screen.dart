import 'package:flutter/material.dart';
import 'package:instagram/home_screen.dart';

class SignUpScreen extends StatefulWidget {

  static final String id = 'signup_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  String _email, _password, _name;
  _submit(){
    if(_formkey.currentState.validate()){
      _formkey.currentState.save();
      print(_name);
      print(_email);
      print(_password);
    }
    Navigator.pushNamed(context, HomeScreen.id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Card(
          margin: EdgeInsets.only(top: 50,right: 15,bottom: 50,left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _instagramText,
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    _textformfieldname,
                    _textformfieldEmail,
                    _textformfieldPassword,
                    SizedBox(height: 20,),
                    _signupBtn,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _instagramText => Text(
    "Instagram",
    style: TextStyle(
      fontSize: 50,
      fontFamily: "Cookie",
    ),
  );

  Widget get _textformfieldname => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 30.0,
    ),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: 'Name',
      ),
      validator: (input) => input.isEmpty
          ? 'Please write a name' : null,
      onSaved: (input) => _name = input,
    ),
  );

  Widget get _textformfieldEmail => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 30.0,
    ),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
      ),
      validator: (input) => !input.contains('@')
          ? 'Please enter a valid email' : null,
      onSaved: (input) => _email = input,
    ),
  );

  Widget get _textformfieldPassword => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 30.0,
    ),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      validator: (input) => input.length < 6
          ? 'must be at least 6 character' : null,
      onSaved: (input) => _password = input,
      obscureText: true,
    ),
  );

  Widget get _signupBtn => Container(
    width: 250,
    child: FlatButton(
      onPressed: _submit,
      color: Colors.blue,
      padding: EdgeInsets.all(10),
      child: Text(
        'Signup',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ),
  );
}
