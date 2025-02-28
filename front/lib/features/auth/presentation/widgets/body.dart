import 'package:auto_route/auto_route.dart';
import 'package:dox/core/routing/app_router.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../bloc/auth_bloc.dart';

final AuthBloc bloc = AuthBloc();

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneNumber = TextEditingController();

    void readDataFromDatabase() async {
      final ref = FirebaseDatabase.instance.ref();
      final snapshot = await ref.child('users/1/phoneNumber').get();
      final userNumber = phoneNumber.text;
      if (userNumber == snapshot.value) {
      } else {
        print('fail');
      }
    }

    return BlocBuilder<AuthBloc, AuthState>(
      bloc: bloc,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  context.router.push(const RegRoute());
                },
                child: Text(
                  'Нет аккаунта? Зарегистрироваться',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
