class CategoryModel {
  int? id;
  String? name;
  String? fullName;
  String? description;
  bool? isSelected;
  CategoryModel(
      {this.id,
      this.name,
      this.fullName,
      this.description,
      this.isSelected = false});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    fullName = json['FullName'];
    description = json['Description'];
    isSelected = json['IsSelected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['FullName'] = fullName;
    return data;
  }
}