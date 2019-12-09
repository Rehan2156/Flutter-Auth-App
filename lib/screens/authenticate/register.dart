import 'package:flutter/material.dart';
import 'package:flutterdemo_app/services/auth.dart';
import 'package:flutterdemo_app/shared/constants.dart';
import 'package:flutterdemo_app/shared/loading.dart';


class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth=AuthService();
  final _formKey = GlobalKey<FormState>();

  String email="";
  String password="";
  String error="";
  bool loading = false;


  @override
  Widget build(BuildContext context) {
    return loading? Loading(): Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Register to Shopping List'),
        actions: <Widget>[
          FlatButton.icon(
            label: Text('Sign In'),
            icon: Icon(Icons.person),
            onPressed: (){
              widget.toggleView();
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
        child: Form(
          key : _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Email'),
                    validator: (val) => val.isEmpty ? 'Enter an email':null,
                    onChanged: (val){
                      setState(()=>email=val);
                    }
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Password'),
                  validator: (val) => val.length<6 ? 'Minimum 6 characters required':null,
                  obscureText: true,//for password
                  onChanged: (val){
                    setState(()=>password=val);
                  },
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  color: Colors.pink[400],
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () async{
                    if(_formKey.currentState.validate())
                      {
                        setState(()=>loading=true);
                        dynamic result= await _auth.registerWithEmailAndPassword(email, password);
                        if(result==null){
                          setState((){
                            error='please give a valid email';
                            loading=false;
                          });
                        }
                      }
                  },
                ),
                SizedBox(height: 12.0),
                Text(error,
                style: TextStyle(color: Colors.red,fontSize: 14.0),
                )
              ],
            )
        ),
      ),
    );
  }
}
