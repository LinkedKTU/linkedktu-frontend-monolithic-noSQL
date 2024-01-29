import '../../constants/enums.dart';

class User {
  final String id;
  final String email ;
  final String password;
  final String name;
  final String? description;
  final String? image;
  final AccountType? accountType;
  final String? contactPhone;
  final String? contactAdress;
  final bool isVerified;
  final bool isAdmin;

  User({
    required this.isVerified,
    required this.isAdmin,
    required this.id,
    required this.email,
    required this.password,
    required this.name,
    required this.accountType,
    this.description,
    this.image,
    this.contactPhone,
    this.contactAdress,
  });

  User.fromMap(Map<String, dynamic> map)
      : id = map['_id']??"",
        email = map['email']??"loremipsum@gmail.com",
        password = map['password']??"123456",
        name = map['name']??"John Doe",
        description = map['description'],
        image = map['image'],
        accountType = int2AccountTypeConverter(map['accountType'])?? AccountType.student,
        contactPhone = map['phone'],
        contactAdress = map['address'],
        isVerified = false, // map['isVerified'],
        isAdmin = false; //map['isAdmin'];

}
