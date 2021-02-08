import 'package:erato/services/auth.dart';
import 'package:erato/shared/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  String email = "";
  String password = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 150.0),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Text('Sign in with your email and password'),
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: "Email",
                          hintText: "e.g abc@gmail.com",
                          suffixIcon: Icon(Icons.email),
                        ),
                        validator: (val) =>
                            val.isEmpty ? 'Email can\'t be empty' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: "Password",
                            suffixIcon: Icon(Icons.lock),
                          ),
                          validator: (val) => val.length < 6
                              ? 'Password must be at least 6 characters long'
                              : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() => password = val);
                          }),
                      SizedBox(height: 20.0),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        color: Colors.amber,
                        splashColor: Colors.amber[400],
                        elevation: 1,
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() => loading = true);
                            dynamic result = await _auth
                                .signInWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(
                                () {
                                  error =
                                      'The email or password that you have entered is incorrect.';
                                  loading = false;
                                },
                              );
                            }
                          }
                        },
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.amber,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(error),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account?"),
                          InkWell(
                            onTap: () {
                              widget.toggleView();
                            },
                            child: new Text(
                              " Sign up",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
