class Makanan {
  final String nama;
  final String deskripsi;
  final String gambar;
  final String detail;
  final String waktubuka;
  final String harga;
  final String kalori;
  final List<String> gambarlain;
  final List<Map<String, String>> bahan;

  Makanan(
      {required this.nama,
      required this.deskripsi,
      required this.gambar,
      required this.gambarlain,
      required this.waktubuka,
      required this.detail,
      required this.kalori,
      required this.bahan,
      required this.harga});
}

List<Makanan> listMakanan = [
  Makanan(
      nama: 'Bubur',
      deskripsi: "Nasi Lembek",
      gambar: 'assets/bubur.jpg',
      detail:
          'Bubur merupakan istilah umum untuk mengacu pada campuran bahan padat dan cair, dengan komposisi cairan yang lebih banyak daripada padatan dan keadaan bahan padatan yang tercerai-berai.',
      waktubuka: '08.00-16.00',
      harga: 'Rp8.000',
      gambarlain: [
        'assets/pecel1.jpg',
        'assets/pecel2.jpg',
        'assets/pecel3.jpg',
      ],
      bahan: [
        {'Sayur': 'assets/bahan/sayur.png'},
        {'Tahu': 'assets/bahan/tahu.png'},
        {'Kentang': 'assets/bahan/kentang.png'},
        {'Telur': 'assets/bahan/telur.png'},
        {'Saus Kacang': 'assets/bahan/kacang.png'},
      ],
      kalori: '426 kkal'),
];
