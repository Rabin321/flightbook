import 'package:flutter/material.dart';

import '../components/button.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BtnOptions(
            label: "International",
            color: const Color.fromARGB(255, 255, 255, 255),
            onTap: () {},
          ),
          BtnOptions(
            label: "Domestic",
            color: const Color.fromARGB(255, 126, 126, 129),
            onTap: () {},
          ),
          // BtnOptions(
          //   label: "Bus",
          //   color: const Color.fromARGB(255, 104, 104, 112),
          //   onTap: () {},
          // ),
          // BtnOptions(
          //   label: "Hotel",
          //   color: const Color.fromARGB(255, 108, 108, 121),
          //   onTap: () {},
          // )
        ],
      ),
    );
  }
}
