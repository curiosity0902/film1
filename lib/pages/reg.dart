import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              'Регистрация',
              style: TextStyle(
                color: Color(0xffed6b5b),
              ),
              textScaler: TextScaler.linear(2),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.people,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Имя пользователя',
                  hintText: 'Имя пользователя',
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
              height: MediaQuery.of(context).size.height * 0.02,
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
              height: MediaQuery.of(context).size.height * 0.02,
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixIcon: IconButton(icon: const Icon(Icons.visibility, color: Color(0xffed6b5b),
                  ) ,onPressed: () {}),
                  prefixIcon: const Icon(Icons.people, color: Color(0xffed6b5b)),
                  labelText: 'Повторите пароль',
                  hintText: 'Повторите пароль',
                  labelStyle: const TextStyle(color: Color(0xffed6b5b)),
                  hintStyle: const TextStyle(color: Colors.white54),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68)
                    ),          
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xffF9AC68))
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Зарегистрироваться')),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Есть аккаунт?",
                  style: TextStyle(color: Colors.white60),
                ),
                TextButton(
                  onPressed: () => Navigator.popAndPushNamed(context, '/'),
                  child: const Text(
                    'Войти',
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
