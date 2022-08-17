import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/src/core/constants/app_colors.dart';
import 'package:flutter_training/src/core/widgets/app_scaffold.dart';

class CardPage extends StatefulWidget {
  const CardPage([Key? key]) : super(key: key);

  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.white,
      child: Container(
        child: const Text('Testando'),
      ),
    );
  }
}
