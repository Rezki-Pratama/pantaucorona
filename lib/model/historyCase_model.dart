
class ModelHistory {
  final String kasus;
  final String provinsi;
  final String umur;
  final String gender;
  final String status;
  final String wn;
  final String pengumuman;
  final String penularan;
  final String rs;

  //constructor
  ModelHistory(
      {this.kasus,
        this.provinsi,
      this.umur,
      this.gender,
      this.status,
      this.wn,
      this.pengumuman,
      this.penularan,
      this.rs});

  //memasukan data json ke variable, dari json string ke dynamic data
  factory ModelHistory.fromJson(Map<String, dynamic> json) {
    return ModelHistory(
      //model - json
      kasus: json['kasus'],
      provinsi: json['provinsi'],
      umur: json['umur'],
      gender: json['gender'],
      status: json['status'],
      wn: json['wn'],
      pengumuman: json['pengumuman'],
      penularan: json['penularan'],
      rs: json['rs'],
    );
  }
}