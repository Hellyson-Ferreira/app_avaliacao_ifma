///Essa classe vai tratar o json que vai se pego do Suap
//Classe exemplo do arquivo Json
/*
[
    {
    "id": 1,
    "name": "Fernando Amro",
    "image_url": "www.dkgjkdjkçjgd.dgkglk/imge.png"
}
    ]
*/

import 'package:meta/meta.dart';
import 'dart:convert';

class PorfessorModel {
    final int id;
    final String name;
    final String imageUrl;

    PorfessorModel({
        @required this.id,
        @required this.name,
        @required this.imageUrl,
    });

    PorfessorModel copyWith({
        int id,
        String name,
        String imageUrl,
    }) => 
        PorfessorModel(
            id: id ?? this.id,
            name: name ?? this.name,
            imageUrl: imageUrl ?? this.imageUrl,
        );

    factory PorfessorModel.fromJson(String str) => PorfessorModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PorfessorModel.fromMap(Map<String, dynamic> json) => PorfessorModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "image_url": imageUrl == null ? null : imageUrl,
    };
}
