
import 'dart:convert';

class AuthModel {
  int id = 0;
  late String username, password, pin;
  late String accessToken, tokenType, expiresIn, refreshToken;

  AuthModel({
    required this.username,
    required this.password,
    required this.accessToken, 
    required this.tokenType, 
    required this.expiresIn, 
    required this.refreshToken,
    required this.pin
  });

  AuthModel.empty(){ username='';password='';accessToken='';tokenType='';expiresIn='';refreshToken='';pin=''; }

  toJsonString() {
    return jsonEncode({
      'username' : username,
      'password' : password,
      'pin' : pin,
      'accessToken' : accessToken,
      'tokenType' : tokenType,
      'expiresIn' : expiresIn,
      'refreshToken' : refreshToken,
    });
  }

  AuthModel.fromJsonString(String string) {
    final json = jsonDecode(string);
    username = json['username'] ?? '';
    password = json['password'] ?? '';
    pin = json['pin'] ?? '';
    accessToken = json['access_token'] ?? '';
    tokenType = json['token_type'] ?? '';
    expiresIn = json['expires_in'] ?? '';
    refreshToken = json['refresh_token'] ?? '';
  }

  AuthModel copyWith({
    String? username,
    String? password,
    String? accessToken,
    String? tokenType,
    String? expiresIn,
    String? refreshToken,
    String? pin
  }){
    return AuthModel(
        username : username ?? this.username,
        password : password ?? this.password,
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn,
        refreshToken: refreshToken ?? this.refreshToken,
        pin: pin ?? this.pin
    );
  }

}