import 'package:flutter_application_1/pages/core/api/end_ponits.dart';

class SignInModel {
  final String token;

  SignInModel({required this.token});

  factory SignInModel.fromJson(Map<String, dynamic> jsonData) {
    return SignInModel(
      token: jsonData[ApiKey.token],
    );
  }
}
