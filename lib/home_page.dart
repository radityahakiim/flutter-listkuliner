import 'package:flutter/material.dart';
import 'package:listkuliner/makanan.dart';
import 'package:listkuliner/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listMakanan.length,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return ListItem(
          nama: listMakanan[index].nama,
          deskripsi: listMakanan[index].deskripsi,
          gambar: listMakanan[index].gambar,
        );
      },
    );
  }
}
