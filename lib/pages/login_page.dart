import 'package:acrilico/atoms/glass_card.dart';
import 'package:acrilico/organisms/mock_login.dart';
import 'package:acrilico/templates/simple_template.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
          useMaterial3: true),
      child: SimpleTemplate(
        title: "Login Demo",
        background: const Image(
          image: AssetImage('img/bubbles.png'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: GlassCard(
            tint: Colors.white.withAlpha(0x40),
            child: const MockLogin(),
          ),
        ),
      ),
    );
  }
}
