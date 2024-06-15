///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class HelpModelDataQuesAns {
/*
{
  "question": "refund policy",
  "answer": "adfsadfad"
}
*/

  String? question;
  String? answer;

  HelpModelDataQuesAns({
    this.question,
    this.answer,
  });
  HelpModelDataQuesAns.fromJson(Map<String, dynamic> json) {
    question = json['question']?.toString();
    answer = json['answer']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['question'] = question;
    data['answer'] = answer;
    return data;
  }
}

class HelpModelDataCategory {
/*
{
  "_id": "664601f13ab5113fc9767026",
  "title": "Refund"
}
*/

  String? Id;
  String? title;

  HelpModelDataCategory({
    this.Id,
    this.title,
  });
  HelpModelDataCategory.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    title = json['title']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    data['title'] = title;
    return data;
  }
}

class HelpModelData {
/*
{
  "_id": "664601f13ab5113fc9767026",
  "category": {
    "_id": "664601f13ab5113fc9767026",
    "title": "Refund"
  },
  "quesAns": [
    {
      "question": "refund policy",
      "answer": "adfsadfad"
    }
  ]
}
*/

  String? Id;
  HelpModelDataCategory? category;
  List<HelpModelDataQuesAns?>? quesAns;

  HelpModelData({
    this.Id,
    this.category,
    this.quesAns,
  });
  HelpModelData.fromJson(Map<String, dynamic> json) {
    Id = json['_id']?.toString();
    category = (json['category'] != null) ? HelpModelDataCategory.fromJson(json['category']) : null;
    if (json['quesAns'] != null) {
      final v = json['quesAns'];
      final arr0 = <HelpModelDataQuesAns>[];
      v.forEach((v) {
        arr0.add(HelpModelDataQuesAns.fromJson(v));
      });
      quesAns = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = Id;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (quesAns != null) {
      final v = quesAns;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['quesAns'] = arr0;
    }
    return data;
  }
}

class HelpModel {
/*
{
  "data": [
    {
      "_id": "664601f13ab5113fc9767026",
      "category": {
        "_id": "664601f13ab5113fc9767026",
        "title": "Refund"
      },
      "quesAns": [
        {
          "question": "refund policy",
          "answer": "adfsadfad"
        }
      ]
    }
  ],
  "status": true,
  "message": "success"
}
*/

  List<HelpModelData>? data;
  bool? status;
  String? message;

  HelpModel({
    this.data,
    this.status,
    this.message,
  });
  HelpModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <HelpModelData>[];
      v.forEach((v) {
        arr0.add(HelpModelData.fromJson(v));
      });
      this.data = arr0;
    }
    status = json['status'];
    message = json['message']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}