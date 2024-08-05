import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class MathScreen extends StatefulWidget {
  const MathScreen({super.key});

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Math"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("formula"),
            SizedBox(
              height: 30,
            ),
            TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
              child: TeXViewDocument(r'\[a^2+ b^2 = (a + b)^2- 2ab \]'),
            ),
          ],
        ),
      ),
    );
  }
}
