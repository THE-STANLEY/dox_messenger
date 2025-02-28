import 'package:auto_route/auto_route.dart';
import 'package:dox/core/routing/app_router.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

@RoutePage()
class RegScreen extends StatelessWidget {
  const RegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: _RegFormWidget(),
    );
  }
}

class _RegFormWidget extends StatelessWidget {
  const _RegFormWidget();

  @override
  Widget build(BuildContext context) {
    final phoneNumber = TextEditingController();
    final userName = TextEditingController();

    void createUser() async {
      final phone = phoneNumber.text;
      final user = userName.text;
      final ref = FirebaseDatabase.instance.ref('users/1');
      await ref.set({"name": user, "phoneNumber": phone});
    }

    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Регистрация',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: userName,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Имя пользователя',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(),
                ),
              ),
            ),
            SizedBox(height: 10),
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
                    createUser();
                  },
                  child: Text(
                    'Регистрация',
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
                context.router.push(const AuthRoute());
              },
              child: Text(
                'Уже есть аккаунт? Войти',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
