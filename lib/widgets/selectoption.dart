import 'package:flutter/material.dart';

import '../components/buttonpass.dart';

class SelectOptions extends StatelessWidget {
  const SelectOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BtnPassengers(
              title: "Departure",
              label: "20 Jun, 2022",
              color: const Color.fromARGB(255, 14, 141, 52),
              iconData: Icons.today,
              onTap: () {},
            ),
            BtnPassengers(
              title: "Return",
              label: "28 Jun, 2022",
              color: const Color.fromARGB(255, 184, 49, 8),
              iconData: Icons.today,
              onTap: () {},
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            BtnPassengers(
              title: "Passengers",
              label: "8 Adults",
              color: const Color.fromARGB(255, 36, 65, 82),
              iconData: Icons.wc,
              onTap: () {},
            ),
            BtnPassengers(
              title: "Class",
              label: "Economy",
              color: const Color.fromARGB(255, 134, 136, 24),
              iconData: Icons.today,
              onTap: () {},
            )
          ],
        )
      ],
    );
  }
}
