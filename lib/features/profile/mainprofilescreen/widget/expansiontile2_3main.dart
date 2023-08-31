import 'package:flutter/material.dart';

import '../Modals/expansiontiles2_3modals.dart';
import 'expansiontile2_3.dart';

class expansiontile2_3main extends StatefulWidget {
  const expansiontile2_3main({super.key});

  @override
  State<expansiontile2_3main> createState() => _expansiontile2_3mainState();
}

class _expansiontile2_3mainState extends State<expansiontile2_3main> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...tiles2list.map((e) {
                              return expansiontile2_3details(e);
                            }).toList(),
      ],
    );
  }
}