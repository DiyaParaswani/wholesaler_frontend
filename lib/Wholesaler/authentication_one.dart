
import 'package:flutter/material.dart';
import 'package:wholesaler/Wholesaler/authentication_two.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running task
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img.png'),
            SizedBox(
              height: 20,
            ),
            Text('EAgroTrade',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.lightGreen,fontStyle: FontStyle.italic),),
          ],
        ),
      ),
    );
  }
}





class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "To EAgroTrade",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20.0), // Add padding to the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "to access your Business,Auctions & Orders.",
                ),
              ),
            ),
            SizedBox(height: 200),
            TextField(
              decoration: InputDecoration(
                hintText: "+91",
                icon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 320),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Second()),
                  );

                },
                child: Text("Get OTP"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  elevation: 5, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "By continuing, you agree to our Terms of Service and Privacy & Legal Policy",
              style: TextStyle(fontSize: 15, color: Colors.grey, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

