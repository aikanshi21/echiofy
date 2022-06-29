import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              //     colorFilter: ColorFilter.mode(
              //       Colors.black.withOpacity(0.2),BlendMode.dstATop),
              image: AssetImage("assets/bg1.png"),
            ),
          ),
        ),
        Center(
            child: Text(
          "Coming Soon",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ))
      ],
    ));
  }
}
