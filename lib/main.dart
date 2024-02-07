import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return welcomeView();
  }
}

class welcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Color.fromARGB(255, 37, 33, 33)])),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Image(image: AssetImage('assets/images/gym.png')),
            ),
            const Text(
              'FITNESS CLUB',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.white)),
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(250))),
              child: const Text(
                'SIGN IN',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.black)),
                  fixedSize:
                      MaterialStateProperty.all(const Size.fromWidth(250))),
              child: const Text(
                'REGISTER NEW USER',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Login with Social Media',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      print('Google Login');
                    },
                    child: const Image(
                      image: AssetImage('assets/images/google.png'),
                    )),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      print('insta Login');
                    },
                    child: const Image(
                      image: AssetImage('assets/images/insta.png'),
                    )),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      print('fb Login');
                    },
                    child: const Image(
                      image: AssetImage('assets/images/fb.png'),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
