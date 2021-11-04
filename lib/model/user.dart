import 'package:meta/meta.dart';

import '../utils.dart';

class UserField {
  static final String lastMessageTime = 'lastMessageTime';
}

class UserModel {
  final String idUser;
  final String name;
  final String email;
  final String? urlAvatar;
  final DateTime? lastMessageTime;

  const UserModel( {
    required this.idUser,
    required this.email,
    required this.name,
    this.lastMessageTime,
    this.urlAvatar,
  });


  static UserModel fromJson(Map <String, dynamic> json) => UserModel(
        idUser: json['idUser'],
        name: json['name'],
        email: json['email'],
        urlAvatar: json['urlAvatar'],
        lastMessageTime: Utils.toDateTime(json['lastMessageTime'],
        ),
      );

  Map<String, dynamic> toJson() => {
        'Email': email,
        'idUser': idUser,
        'name': name,
        'imgURl': urlAvatar,
        'lastMessageTime': Utils.fromDateTimeToJson(lastMessageTime!),
      };
}