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

  factory Makanan.fromJson(Map<String, dynamic> json) {
    return Makanan(
      nama: json["nama"],
      deskripsi: json["deskripsi"],
      gambar: json["gambar"],
      waktubuka: json["waktubuka"],
      detail: json["detail"],
      kalori: json["kalori"],
      harga: json["harga"],
      gambarlain: List<String>.from(json["gambarlain"]),
      bahan: List<Map<String, String>>.from(json["bahan"].map(
          (x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
    );
  }
}
