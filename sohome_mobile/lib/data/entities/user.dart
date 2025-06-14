import 'package:equatable/equatable.dart';

/// {@template user}
/// User description
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    required this.email,
    required this.username,
    required this.name,
    required this.accessToken,
    required this.refreshToken,
  });

  /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'] as String,
    email: json['email'] as String,
    username: json['username'] as String,
    name: json['name'] as String,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
  );

  /// A description for email
  final String email;

  /// A description for username
  final String username;

  /// A description for name
  final String name;

  /// A description for accessToken
  final String accessToken;

  /// A description for refreshToken
  final String refreshToken;

  final String id;

  /// Creates a copy of the current User with property changes
  User copyWith({
    String? id,
    String? email,
    String? username,
    String? name,
    String? accessToken,
    String? refreshToken,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      name: name ?? this.name,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  @override
  List<Object?> get props => [
    id,
    email,
    username,
    name,
    accessToken,
    refreshToken,
  ];

  /// Creates a Json map from a User
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'email': email,
    'username': username,
    'name': name,
    'accessToken': accessToken,
    'refreshToken': refreshToken,
  };

  /// Creates a toString() override for User
  @override
  String toString() =>
      'User(id: $id, email: $email, username: $username, name: $name, accessToken: $accessToken, refreshToken: $refreshToken,)';
}
