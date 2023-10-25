import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String nama;
  final String deskripsi;
  final String gambar;

  const ListItem(
      {super.key,
      required this.nama,
      required this.deskripsi,
      required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 178, 178, 178),
            offset: Offset(1.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: [
          // widget untuk menampilkan gambar lokal
          Image.asset(
            gambar,
            width: 75,
            height: 75,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                deskripsi,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
