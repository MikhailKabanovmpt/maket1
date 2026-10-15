import 'package:flutter/material.dart';


void main() {
  runApp(const MedinowApp());
}

class MedinowApp extends StatelessWidget {
  const MedinowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'medinow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const Color tealBg = Color(0xFF0E9C94);
  static const Color lightCyan = Color(0xFFCFF3F1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 40),

             
              const Text(
                'medinow',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Meditate With Us!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              ),

              const SizedBox(height: 48),

              
              _AuthButton(
                label: 'Sign in with Apple',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                icon: Icons.apple,
                onPressed: () {},
              ),
              const SizedBox(height: 16),

              
              _AuthButton(
                label: 'Continue with Email or Phone',
                backgroundColor: lightCyan,
                textColor: Colors.black,
                onPressed: () {},
              ),
              const SizedBox(height: 16),

              
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Continue With Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),

              const Spacer(),

             
              SizedBox(
                height: 260,
                width: double.infinity,
                child: Image.asset(
                  'assets/meditation.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

}


class _AuthButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final IconData? icon;
  final VoidCallback onPressed;

  const _AuthButton({
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 20, color: textColor),
              const SizedBox(width: 8),
            ],
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
