import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: _AuthFormWidget());
  }
}

class _AuthFormWidget extends StatelessWidget {
  const _AuthFormWidget();

  @override
  Widget build(BuildContext context) {
    final phoneNumber = TextEditingController();

    void readDataFromDatabase() async {
      final ref = FirebaseDatabase.instance.ref();
      final snapshot = await ref.child('users/1/phoneNumber').get();
      final userNumber = phoneNumber.text;
      if (userNumber == snapshot.value) {
        Navigator.of(context).pushReplacementNamed('/messenger');
      } else {
        print('fail');
      }
    }

    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Вход',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
            IntlPhoneField(
              controller: phoneNumber,
              keyboardType: TextInputType.phone,
              focusNode: FocusNode(),
              dropdownTextStyle: TextStyle(fontSize: 15),
              style: TextStyle(fontSize: 13),
              decoration: InputDecoration(
                labelText: 'Номер телефона',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'RU',
            ),
            SizedBox(height: 10),
            ColoredBox(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextButton(
                  onPressed: () {
                    readDataFromDatabase();
                  },
                  child: Text(
                    'Войти',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
              child: Text(
                'Нет аккаунта? Зарегистрироваться',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
