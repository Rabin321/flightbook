import 'package:flutter/material.dart';

class Reservations extends StatefulWidget {
  final Color color;

  const Reservations({Key? key, required this.color}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                color: const Color.fromARGB(255, 116, 122, 128),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: const Icon(Icons.keyboard_backspace,
                              color: Colors.white, size: 25),
                        ),

                        // IconButton(onPressed: Navigator.pop(context), icon: Icons.arrow_back),
                        const SizedBox(width: 40),
                        const Text("AUS",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(width: 8),
                        const Icon(Icons.swap_horiz,
                            color: Colors.white, size: 25),
                        const SizedBox(width: 10),
                        const Text("USA",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(width: 160),
                        const Icon(Icons.build, color: Colors.white, size: 25)
                      ],
                    ),
                    const SizedBox(height: 13),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("24 Jun - 29 Jun",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text("8 Adults  Economy",
                            style: TextStyle(color: Colors.white, fontSize: 15))
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Tickets",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          Icon(Icons.filter_list, color: Colors.black, size: 22)
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 630,
                        child: ListView(
                          children: <Widget>[
                            _reservationsItem(),
                            _reservationsItem(),
                            _reservationsItem(),
                            _reservationsItem(),
                            _reservationsItem(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _reservationsItem() {
  return Container(
    width: 500,
    height: 200,
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(14))),
    child: Column(
      children: <Widget>[
        Row(
          children: const [
            Icon(Icons.airplane_ticket_sharp, color: Colors.green, size: 35),
            SizedBox(width: 10),
            Text("USA Airways",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(width: 50),
            Text("\$999",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _itemDepartment(),
            _locationPlane(),
            _itemDepartment2()
          ],
        )
      ],
    ),
  );
}

Widget _itemDepartment() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Departure",
            style: TextStyle(color: Color.fromARGB(255, 36, 35, 35))),
        SizedBox(height: 10),
        Text("10:20",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("AUS", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 20),
        Text("08:40",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("USA", style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}

Widget _itemDepartment2() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Arrive",
            style: TextStyle(color: Color.fromARGB(255, 36, 35, 35))),
        SizedBox(height: 10),
        Text("06:10",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("USA", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 20),
        Text("12:30",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("AUS", style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}

Widget _locationPlane() {
  return Container(
    child: Column(
      children: <Widget>[
        Row(
          children: const [
            Icon(Icons.flight_takeoff,
                color: Color.fromARGB(255, 13, 170, 8), size: 21),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.location_on,
                color: Color.fromARGB(255, 172, 67, 7), size: 21),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(Icons.location_on,
                color: Color.fromARGB(255, 172, 67, 7), size: 21),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.blue, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.fiber_manual_record, color: Colors.green, size: 8),
            Icon(Icons.flight_takeoff,
                color: Color.fromARGB(255, 13, 170, 8), size: 21),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Print Ticket",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        )
      ],
    ),
  );
}
