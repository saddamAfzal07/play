import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PastLFG extends StatefulWidget {
  const PastLFG({Key? key}) : super(key: key);

  @override
  State<PastLFG> createState() => _PastLFGState();
}

class _PastLFGState extends State<PastLFG> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Text("Past LFG")],
    );
  }
}
