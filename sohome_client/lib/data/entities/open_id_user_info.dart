import 'package:equatable/equatable.dart';

/// {@template open_id_user_info}
/// OpenIdUserInfo description
/// {@endtemplate}
class OpenIdUserInfo extends Equatable {
  /// {@macro open_id_user_info}
  const OpenIdUserInfo({ 
    this.sub,
    this.email,
    this.preferredUsername,
    this.name,
  });

    /// Creates a OpenIdUserInfo from Json map
  factory OpenIdUserInfo.fromJson(Map<String, dynamic> json) => OpenIdUserInfo(
        sub: json['sub'] as String?,
        email: json['email'] as String?,
        preferredUsername: json['preferred_username'] as String?,
        name: json['name'] as String?,
      );

  /// A description for sub
  final String? sub;

  /// A description for email
  final String? email;

  /// A description for preferredUsername
  final String? preferredUsername;

  /// A description for name
  final String? name;

    /// Creates a copy of the current OpenIdUserInfo with property changes
  OpenIdUserInfo copyWith({ 
    String? Function()? sub,
    String? Function()? email,
    String? Function()? preferredUsername,
    String? Function()? name,
  }) {
    return OpenIdUserInfo(
      sub: sub != null ? sub() : this.sub,
      email: email != null ? email() : this.email,
      preferredUsername: preferredUsername != null ? preferredUsername() : this.preferredUsername,
      name: name != null ? name() : this.name,
    );
  }


    @override
  List<Object?> get props => [
        sub,
        email,
        preferredUsername,
        name,
      ];

    /// Creates a Json map from a OpenIdUserInfo
  Map<String, dynamic> toJson() => <String, dynamic>{ 
        'sub': sub,
        'email': email,
        'preferred_username': preferredUsername,
        'name': name,
      };

    /// Creates a toString() override for OpenIdUserInfo
  @override
  String toString() => 'OpenIdUserInfo(sub: $sub, email: $email, preferredUsername: $preferredUsername, name: $name)';
}
