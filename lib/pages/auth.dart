import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/image1.png',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              'Войдите в аккаунт',
              style: TextStyle(
                color: Color(0xffed6b5b),
              ),
              textScaler: TextScaler.linear(2),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Email',
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.white54),
                  labelStyle: const TextStyle(color: Color(0xffed6b5b)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility,
                      color: Color(0xffed6b5b),
                    ),
                    onPressed: () {},
                  ),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Пароль',
                  hintText: 'Пароль',
                  hintStyle: const TextStyle(color: Colors.white54),
                  labelStyle: const TextStyle(color: Color(0xffed6b5b)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.06,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text('Войти')),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Нет аккаунта?",
                  style: TextStyle(color: Colors.white60),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Зарегистрироваться',
                    style: TextStyle(decoration: TextDecoration.underline),
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
