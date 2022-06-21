import 'package:flutter/material.dart';

class BtnPassengers extends StatelessWidget {
  // final Function onTap;
  final String label;
  final String title;
  final Color color;
  final IconData iconData;
  final VoidCallback onTap;

  const BtnPassengers(
      {Key? key,
      required this.onTap,
      required this.label,
      required this.title,
      required this.color,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {},
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: const TextStyle(color: Colors.deepOrange)),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            height: 45,
            width: 170,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(14))),
                  child: Icon(iconData, color: Colors.white, size: 18),
                ),
                const SizedBox(width: 5),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
