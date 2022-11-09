import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnePage  extends StatelessWidget {
  const OnePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Center(
                  child: Text(
                    "Ola mundo",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(color: Colors.red, height: 100, width: 200),
                  Container(color: Colors.purple, height: 100, width: 200)
                ],
              )
            ],
          );
  }
}