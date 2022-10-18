import 'package:flutter/material.dart';
import 'package:recipe_1/constant/routes/routes_constants.dart';

class SigningView extends StatelessWidget {
  const SigningView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 88, 121, 226),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Row(
              children: const [
                Icon(
                  Icons.keyboard_return,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.menu_sharp,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Column(
              children: [
                const FlutterLogo(
                  size: 100,
                ),
                const Text(
                  'FlutterFit',
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Stay in shape, stay healthy',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      signUpRoute,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      color: Colors.orange,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 41, 182, 246),
                          Color.fromARGB(255, 84, 197, 248),
                        ],
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 47,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      color: Colors.white,
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 84, 197, 248),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
