
class ModelIndonesia {
  final String name;
  final String positif;
  final String sembuh;
  final String meninggal;

  //constructor
  ModelIndonesia(
      {this.name,
      this.positif,
      this.sembuh,
      this.meninggal});

  //memasukan data json ke variable, dari json string ke dynamic data
  factory ModelIndonesia.fromJson(Map<String, dynamic> json) {
    return ModelIndonesia(
      //model - json
      name: json['name'],
      positif: json['positif'],
      sembuh: json['sembuh'],
      meninggal: json['meninggal'],
    );
  }
}