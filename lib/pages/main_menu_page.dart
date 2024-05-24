import 'package:acrilico/atoms/glass_button.dart';
import 'package:acrilico/pages/glass_demo_page.dart';
import 'package:acrilico/pages/login_page.dart';
import 'package:acrilico/templates/simple_template.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      child: SimpleTemplate(
        title: "Main Menu",
        background: const Image(
          image: AssetImage('img/triangles.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GlassButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                tint: Colors.white38,
                blurIntensity: 4,
                child: const Text("Mock Login"),
              ),
              GlassButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const GlassDemoPage(),
                    ),
                  );
                },
                tint: Colors.white38,
                blurIntensity: 4,
                child: const Text("Glass Gallery"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
