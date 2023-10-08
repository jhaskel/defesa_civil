
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  const CustomError({
    Key? key,
    required this.errorDetails,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/images/error_illustration.png'),
            Text(
              kDebugMode
                  ? errorDetails.summary.toString()
                  : 'Ops! Algo deu errado!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: kDebugMode ? Colors.red : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21),
            ),
            const SizedBox(height: 12),
            const Text(
              kDebugMode
                  ? 'https://docs.flutter.dev/testing/errors'
                  : "Encontramos um erro e notificamos nossa equipe de engenharia sobre isso. Desculpe pela inconveniência causada.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}