class data_test {
  List<Results>? results;

  data_test({this.results});

  data_test.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? amount;
  String? date;
  String? createdBy;
  String? affiliate;

  Results({this.amount, this.date, this.createdBy, this.affiliate});

  Results.fromJson(Map<String, dynamic> json) {
    amount = json['Amount'];
    date = json['Date'];
    createdBy = json['Created by'];
    affiliate = json['Affiliate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Amount'] = this.amount;
    data['Date'] = this.date;
    data['Created by'] = this.createdBy;
    data['Affiliate'] = this.affiliate;
    return data;
  }
}