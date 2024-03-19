import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codeplayon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen App'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Codeplayon',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 24),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0), // 30 pixel circular border
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    // Handle forgot password logic here
                  },
                  child: Text('Forgot Password?'),
                ),
                SizedBox(height: 16),
                Container(
                  width: 370,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Login'),
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {

                  },
                  child: Text('Don\'t have an account? Sign in'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}