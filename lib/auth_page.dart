import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 0, 111, 1.0), // Background color
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(51, 0, 111, 1.0), // AppBar background color
        title: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0), // Space from top of AppBar
              child: Container(
                margin: EdgeInsets.only(top: 20), // Space between image and title
                child: Image.asset(
                  '/Users/rohanpuri/Documents/GitHub/dropin_app/lib/images/211246E3-1E38-46DC-921D-25902AFD9B33_4_5005_c.jpeg', // Path to your image
                  width: 125, // Adjust width
                  height: 125, // Adjust height
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0), // Space between image and title
              child: Text(
                'UWB Soccer Drop-In', // Title text
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white, // Title color
                  fontSize: 30, // Title font size
                ),
              ),
            ),
          ],
        ),
        centerTitle: true, // Center title horizontally
        toolbarHeight: 300, // Set height for AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align elements with space between
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch horizontally
          children: <Widget>[
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25.0, bottom: 16.0), // Space from top of the screen and between TextFields
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'UW email (eg. doejohn2@uw.edu)',
                      fillColor: Colors.white, // TextField background color
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0), // Space between TextField and button
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white, // TextField background color
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: _authenticate,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white), // Text color
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 0, 0, 1), // Button color
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 230), // Padding at the bottom
              child: Text(
                'Or Sign in With...', // Text at the bottom
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _authenticate() {
    final username = _usernameController.text;
    final password = _passwordController.text;
    print('Username: $username');
    print('Password: $password');
  }
}
