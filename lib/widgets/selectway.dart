import 'package:flightbooking/components/buttonway.dart';
import 'package:flutter/material.dart';

class SelectWay extends StatelessWidget {
  const SelectWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text("Select the way",
          //     style: TextStyle(color: Colors.white, fontSize: 18)),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              BtnWay(
                label: "ROUND TRIP",
                iconData: Icons.swap_horiz,
                color: Color.fromARGB(255, 201, 169, 169),
                onTap: () {},
              ),
              BtnWay(
                label: "ONE WAY",
                iconData: Icons.trending_flat,
                color: Color.fromARGB(255, 103, 103, 105),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
