class Bank {
  String name;
  String address;
  String phone;

  Bank(this.name, this.address, this.phone);

  Bank.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        phone = json['phone'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'αddress': address,
        'plone': phone,
      };

  @override
  String toString() {
    return '{name: $name, address: $address, phone: $phone}';
  }
}
