
class ModelAttributes {
  final ModelProvinsi provinsi;

  ModelAttributes({
    this.provinsi
  });

  factory ModelAttributes.fromJson(Map<String, dynamic> json){
    return ModelAttributes(
      provinsi: ModelProvinsi.fromJson(json['attributes']),
    );
  }
}

class ModelProvinsi {
  final int fid;
  final int kodeProvinsi;
  final String provinsi;
  final int positif;
  final int sembuh;
  final int meninggal;

  //constructor
  ModelProvinsi(
      {
      this.fid,
      this.kodeProvinsi,
      this.provinsi,
      this.positif,
      this.sembuh,
      this.meninggal,});

  //memasukan data json ke variable, dari json string ke dynamic data
  factory ModelProvinsi.fromJson(Map<String, dynamic> json) {
    return ModelProvinsi(
      //model - json
      fid: json['FID'],
      kodeProvinsi: json['Kode_Provi'],
      provinsi: json['Provinsi'],
      positif: json['Kasus_Posi'],
      sembuh: json['Kasus_Semb'],
      meninggal: json['Kasus_Meni'],
    );
  }
}