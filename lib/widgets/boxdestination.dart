import 'package:flutter/material.dart';

class BoxDestination extends StatelessWidget {
  const BoxDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 17),
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 220, 223, 224),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              _iconDestination(),
              const SizedBox(
                width: 16,
                height: 10,
              ),
              _originAndDestionation(),
              const SizedBox(width: 55),
              _originAndDestionationIcon()
            ],
          )
        ],
      ),
    );
  }
}

Widget _originAndDestionationIcon() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text("UK", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      SizedBox(height: 15),
      Icon(Icons.swap_vert,
          color: Color.fromARGB(255, 139, 143, 143), size: 40),
      SizedBox(height: 15),
      Text("KTM", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    ],
  );
}

Widget _originAndDestionation() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: "To \n",
              style: TextStyle(
                  color: Color.fromARGB(255, 61, 60, 58), fontSize: 14)),
          TextSpan(
            text: "United Kingdom",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ]),
      ),
      const SizedBox(height: 65),
      RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: "From \n",
              style: TextStyle(
                  color: Color.fromARGB(255, 61, 60, 58), fontSize: 14)),
          TextSpan(
            text: "Kathmandu",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ]),
      ),
    ],
  );
}

Widget _iconDestination() {
  return Container(
    child: Column(
      children: const [
        Icon(Icons.location_on,
            color: Color.fromARGB(255, 231, 49, 17), size: 30),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 224, 91, 68), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 218, 118, 101), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 224, 150, 137), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 107, 180, 98), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 69, 158, 74), size: 12),
        Icon(Icons.fiber_manual_record,
            color: Color.fromARGB(255, 43, 165, 43), size: 12),
        Icon(Icons.airplanemode_active,
            color: Color.fromARGB(255, 29, 192, 7), size: 30),
      ],
    ),
  );
}
