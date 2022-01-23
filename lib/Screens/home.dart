import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: glassmorphismWindow(size),
      ),
    );
  }

  Container glassmorphismWindow(Size size) {
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.9,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedButton(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    'Start',
                    style: GoogleFonts.odibeeSans(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              height: 70,
              width: 200,
              color: Color(0xffE6C5FE),
              onPressed: () {},
              enabled: true,
              shadowDegree: ShadowDegree.light,
              duration: 400,
            ),
            SizedBox(
              height: 30,
            ),
            AnimatedButton(
              child: Text(
                'Settings',
                style: GoogleFonts.odibeeSans(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              height: 70,
              width: 200,
              color: Color(0xffC7C5FD),
              onPressed: () {},
              enabled: true,
              shadowDegree: ShadowDegree.light,
              duration: 400,
            ),
          ],
        ),
      ),
    );
  }
}
