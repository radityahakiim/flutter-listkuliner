import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String gambar;

  const DetailPage({super.key, required this.nama, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Stack(
        children: <Widget>[
          Image.asset(
            gambar,
            scale: 0.5,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  // const FavouriteButton(),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Text(
              nama,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
