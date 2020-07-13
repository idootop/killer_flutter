class Courses {
  List<AaData> aaData;
  int iTotalRecords;

  Courses({this.aaData, this.iTotalRecords});

  Courses.fromJson(Map<String, dynamic> json) {
    if (json['aaData'] != null) {
      aaData = new List<AaData>();
      json['aaData'].forEach((v) {
        aaData.add(new AaData.fromJson(v));
      });
    }
    iTotalRecords = json['iTotalRecords'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aaData != null) {
      data['aaData'] = this.aaData.map((v) => v.toJson()).toList();
    }
    data['iTotalRecords'] = this.iTotalRecords;
    return data;
  }
}

class AaData {
  String cfbs;
  String jx0404id;
  String jx02id;
  String kch;
  String fzmc;
  String xqmc;
  String kcmc;
  String skls;
  int pkrs;
  String syrs;
  String skdd;
  String sksj;
  var xf;

  AaData(
      {this.cfbs,
      this.jx0404id,
      this.jx02id,
      this.kch,
      this.fzmc,
      this.xqmc,
      this.kcmc,
      this.skls,
      this.pkrs,
      this.syrs,
      this.skdd,
      this.sksj,
      this.xf});

  AaData.fromJson(Map<String, dynamic> json) {
    cfbs = json['cfbs'];
    jx0404id = json['jx0404id'];
    jx02id = json['jx02id'];
    kch = json['kch'];
    fzmc = json['fzmc'];
    xqmc = json['xqmc'];
    kcmc = json['kcmc'];
    skls = json['skls'];
    pkrs = json['pkrs'];
    syrs = json['syrs'];
    skdd = json['skdd'];
    sksj = json['sksj'];
    xf = json['xf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cfbs'] = this.cfbs;
    data['jx0404id'] = this.jx0404id;
    data['jx02id'] = this.jx02id;
    data['kch'] = this.kch;
    data['fzmc'] = this.fzmc;
    data['xqmc'] = this.xqmc;
    data['kcmc'] = this.kcmc;
    data['skls'] = this.skls;
    data['pkrs'] = this.pkrs;
    data['syrs'] = this.syrs;
    data['skdd'] = this.skdd;
    data['sksj'] = this.sksj;
    data['xf'] = this.xf;
    return data;
  }
}