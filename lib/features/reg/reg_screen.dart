import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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
  const _RegFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            TextFormField(),
            SizedBox(height: 10),
            IntlPhoneField(
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
                  onPressed: () {},
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
              onPressed: () {},
              child: Text('Уже есть аккаунт? Войти'),
            ),
          ],
        ),
      ),
    );
  }
}
