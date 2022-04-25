import 'dart:convert';

List<BillCategory> billCategoryFromJson(String str) => List<BillCategory>.from(json.decode(str).map((x) => BillCategory.fromJson(x)));

String billCategoryToJson(List<BillCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BillCategory {
    BillCategory({
        this.name,
        this.image,
    });

    final String? name;
    final String? image;

    factory BillCategory.fromJson(Map<String, dynamic> json) => BillCategory(
        name: json["name"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name"  : name,
        "image" : image,
    };
}
