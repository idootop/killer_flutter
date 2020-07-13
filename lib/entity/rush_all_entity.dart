class RushAll {
  Infos infos;
  List<Rushes> rushes;

  RushAll({this.infos, this.rushes});

  RushAll.fromJson(Map<String, dynamic> json) {
    infos = json['infos'] != null ? new Infos.fromJson(json['infos']) : null;
    if (json['rushes'] != null) {
      rushes = new List<Rushes>();
      json['rushes'].forEach((v) {
        rushes.add(new Rushes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.infos != null) {
      data['infos'] = this.infos.toJson();
    }
    if (this.rushes != null) {
      data['rushes'] = this.rushes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Infos {
  String server;
  String user;
  String pass;
  String hour;
  String minute;
  String xqmc;

  Infos({this.server, this.user, this.pass, this.hour, this.minute, this.xqmc});

  Infos.fromJson(Map<String, dynamic> json) {
    server = json['server'];
    user = json['user'];
    pass = json['pass'];
    hour = json['hour'];
    minute = json['minute'];
    xqmc = json['xqmc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['server'] = this.server;
    data['user'] = this.user;
    data['pass'] = this.pass;
    data['hour'] = this.hour;
    data['minute'] = this.minute;
    data['xqmc'] = this.xqmc;
    return data;
  }
}

class Rushes {
  One one;
  Two two;

  Rushes({this.one, this.two});

  Rushes.fromJson(Map<String, dynamic> json) {
    one = json['one'] != null ? new One.fromJson(json['one']) : null;
    two = json['two'] != null ? new Two.fromJson(json['two']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.one != null) {
      data['one'] = this.one.toJson();
    }
    if (this.two != null) {
      data['two'] = this.two.toJson();
    }
    return data;
  }
}

class One {
  String kcxx;
  String skls;
  String skxq;
  String skjc;
  String skdd;

  One({this.kcxx, this.skls, this.skxq, this.skjc, this.skdd});

  One.fromJson(Map<String, dynamic> json) {
    kcxx = json['kcxx'];
    skls = json['skls'];
    skxq = json['skxq'];
    skjc = json['skjc'];
    skdd = json['skdd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kcxx'] = this.kcxx;
    data['skls'] = this.skls;
    data['skxq'] = this.skxq;
    data['skjc'] = this.skjc;
    data['skdd'] = this.skdd;
    return data;
  }
}

class Two {
  String kcxx;
  String skls;
  String skxq;
  String skjc;
  String skdd;

  Two({this.kcxx, this.skls, this.skxq, this.skjc, this.skdd});

  Two.fromJson(Map<String, dynamic> json) {
    kcxx = json['kcxx'];
    skls = json['skls'];
    skxq = json['skxq'];
    skjc = json['skjc'];
    skdd = json['skdd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kcxx'] = this.kcxx;
    data['skls'] = this.skls;
    data['skxq'] = this.skxq;
    data['skjc'] = this.skjc;
    data['skdd'] = this.skdd;
    return data;
  }
}