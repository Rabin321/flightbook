import 'package:flutter/material.dart';

class BtnWay extends StatelessWidget {
  // final Function onTap;
  final VoidCallback onTap;
  final String label;
  final Color color;
  final IconData iconData;

  const BtnWay(
      {Key? key,
      required this.onTap,
      required this.label,
      required this.color,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // onTap: (() {}),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        height: 50,
        width: 170,
        decoration: BoxDecoration(
            color: color.withOpacity(0.3),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.all(Radius.circular(14))),
              child: Icon(iconData, color: Colors.white, size: 18),
            ),
            const SizedBox(width: 5),
            Container(
              alignment: Alignment.center,
              width: 90,
              child: Text(label,
                  style: TextStyle(
                      color: color, fontSize: 15, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
