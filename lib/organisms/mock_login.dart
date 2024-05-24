import 'package:acrilico/atoms/glass_button.dart';
import 'package:acrilico/atoms/vertical_separator.dart';
import 'package:acrilico/molecules/glass_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// This "organism" is actually just a mock login page without any behavior.
/// Thus, it doesn't read data from anywhere and doesn't send any events.
class MockLogin extends StatelessWidget {
  const MockLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Acesse sua conta",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black54,
              fontSize: 30,
            ),
          ),
          const Text(
              "Este botões não têm ação. Sinta-se livre para mexer no que quiser.",
              style: TextStyle(
                color: Colors.black54,
              )),
          const SizedBox(height: 15),
          GlassLoginButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("img/google.svg",
                    height: Theme.of(context).iconTheme.size ?? 24),
                const SizedBox(width: 10),
                const Text("Login com Google",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const GlassLoginButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.apple),
                SizedBox(width: 10),
                Text("Login com Apple",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const VerticalSeparator(text: "ou"),
          TextFormField(
            autocorrect: false,
            decoration: const InputDecoration(
              label: Text("Username"),
              alignLabelWithHint: true,
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              label: Text("Password"),
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(height: 15),
          GlassButton(
            onPressed: () {},
            tint: Colors.pink.withAlpha(0x30),
            child: const Text("Login"),
          ),
          TextButton(
            child: Text("Esqueceu sua senha?"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Cadastrar conta"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
