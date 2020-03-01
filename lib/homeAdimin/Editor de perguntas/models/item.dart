class Item {
  int id;
  String title;

  Item({this.id, this.title});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }

  @override
  String toString() {
    
    return this.title;
  
  }
}
