import 'package:erato/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:erato/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
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
                      SizedBox(height: 90.0),
                      Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Create an account, It\'s free '),
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
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) =>
                            val.isEmpty ? 'Email can\'t be empty' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                          controller: _passwordController,
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
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        validator: (String value) {
                          if (value != _passwordController.value.text) {
                            return 'Passwords do not match!';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Confirm Password',
                          suffixIcon: Icon(Icons.lock),
                        ),
                      ),
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
                                .registerWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(
                                () {
                                  error = 'Please enter a valid email address';
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
                          'Sign Up',
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
                          Text("Already have an account?"),
                          InkWell(
                            onTap: () {
                              widget.toggleView();
                            },
                            child: new Text(
                              " Login",
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
