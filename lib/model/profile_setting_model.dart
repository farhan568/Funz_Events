class UserSettingModel {

  late String firstName;
  String? userName="";
  late String email;
  String? language="";
  String? type="";
  String? bio="";
  String? phone="";
  String? gender="";
  String? website="";


  UserSettingModel({
    required this.firstName,
    required this.email,
    this.userName,
    this.language,
    this.type,
    this.bio,
    this.website,
    this.gender,
    this.phone,
  });




  UserSettingModel.fromJson(Map<String, dynamic> data){
    firstName = data["Name"]??"Default";
    email = data["Email"];
    language = data["language"]??"";
    userName = data["userName"]??"";
    bio = data["bio"]??"";
    phone = data["phone"] ?? "";
    gender = data["gender"]??"";
    website = data["website"]??"";

  }

  Map<String, dynamic> toJson() {
    return {
      "Name": firstName,
      "userName": userName,
      "Email": email,
      "language": language,
      "type" : type,
      "bio": bio,
      "phone": phone,
      "gender": gender,
      "website": website,


    };
  }
}