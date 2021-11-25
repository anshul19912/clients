class Clients {
  String? name;
  String? id;
  String? company;
  String? orderId;
  String? invoicepaid;
  String? invoicePending;
  
  Clients(
      {this.name,
      this.id,
      this.company,
      this.orderId,
      this.invoicepaid,
      this.invoicePending});

  Clients.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    id = map['id'];
    company = map['company'];
    orderId = map['orderId'];
    invoicepaid = map['invoicepaid'];
    invoicePending = map['invoicePending'];
  }
}



class UsersList {

  List<Clients>? userlist;
  UsersList({this.userlist});

  factory UsersList.fromMap(Map<String, dynamic> map) {
    return UsersList(userlist: generatelist(map));
  }
}

List<Clients> generatelist(Map<String, dynamic> map) {
  List<Clients> emptylist = [];
  for (var item in map['clients'] ?? []) {
    Clients picker = Clients.fromMap(item);
    emptylist.add(picker);
  }
  return emptylist;
}
