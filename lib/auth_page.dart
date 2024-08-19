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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  child: Image.asset(
                    '/Users/rohanpuri/Documents/GitHub/dropin_app/lib/images/211246E3-1E38-46DC-921D-25902AFD9B33_4_5005_c.jpeg', // Path to your image
                    width: 140, // Adjust width
                    height: 140, // Adjust height
                    fit: BoxFit.cover, // Ensure image covers the container
                  ),
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
            // Divider section
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20.0), // Adjust padding as needed
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white, // Line color
                      thickness: 1, // Line thickness
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0), // Space between lines and text
                    child: Text(
                      'Or Continue With...', // Text at the bottom
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white, // Line color
                      thickness: 1, // Line thickness
                    ),
                  ),
                ],
              ),
            ),
            // Square tile section below the divider
            Center(
              child: Container(
                width: 80, // Fixed width for the square tile
                height: 80, // Fixed height for the square tile
                decoration: BoxDecoration(
                  color: Colors.white, // Tile background color
                  shape: BoxShape.rectangle, // Keep the shape square
                  borderRadius: BorderRadius.circular(15), // Optional rounded corners
                ),
                child: Center(
                  child: Image.asset(
                    '/Users/rohanpuri/Documents/GitHub/dropin_app/lib/images/googlelogo.png', // Replace with the path to your image
                    width: 50, // Adjust width of the image
                    height: 50, // Adjust height of the image
                  ),
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
