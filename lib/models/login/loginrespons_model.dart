class LoginResponseModel {
  String? res;
  String? msg;
  Data? data;

  LoginResponseModel({this.res, this.msg, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    res = json['res'];
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['res'] = this.res;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? mobile;
  String? password;
  String? scratchPoints;
  String? spinPoints;
  String? coin;
  String? loginStatus;
  String? status;
  String? date;
  String? time;

  Data(
      {this.id,
        this.name,
        this.mobile,
        this.password,
        this.scratchPoints,
        this.spinPoints,
        this.coin,
        this.loginStatus,
        this.status,
        this.date,
        this.time});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    password = json['password'];
    scratchPoints = json['scratch_points'];
    spinPoints = json['spin_points'];
    coin = json['coin'];
    loginStatus = json['login_status'];
    status = json['status'];
    date = json['date'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['scratch_points'] = this.scratchPoints;
    data['spin_points'] = this.spinPoints;
    data['coin'] = this.coin;
    data['login_status'] = this.loginStatus;
    data['status'] = this.status;
    data['date'] = this.date;
    data['time'] = this.time;
    return data;
  }
}
