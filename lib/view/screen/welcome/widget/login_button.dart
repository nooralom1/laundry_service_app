import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 46,
        width: 318,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 2, color: const Color(0xff0A51EB)),
            color: const Color(0xffFFFFFF)),
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(
                color: Color(0xff007BE5), fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
