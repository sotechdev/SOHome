import 'package:equatable/equatable.dart';

/// {@template open_id_client_configuration}
/// OpenIdClientConfiguration description
/// {@endtemplate}
class OpenIdClientConfiguration extends Equatable {
  /// {@macro open_id_client_configuration}
  const OpenIdClientConfiguration({
    required this.serverUrl,
    required this.realm,
    required this.clientId,
  });

  /// Creates a OpenIdClientConfiguration from Json map
  factory OpenIdClientConfiguration.fromJson(Map<String, dynamic> json) =>
      OpenIdClientConfiguration(
        serverUrl: json['serverUrl'] as String,
        realm: json['realm'] as String,
        clientId: json['clientId'] as String,
      );

  /// A description for serverUrl
  final String serverUrl;

  /// A description for realm
  final String realm;

  /// A description for clientId
  final String clientId;

  Uri get serverUri => Uri.parse('$serverUrl/realms/$realm');

  /// Creates a copy of the current OpenIdClientConfiguration with property changes
  OpenIdClientConfiguration copyWith({
    String? serverUrl,
    String? realm,
    String? clientId,
  }) {
    return OpenIdClientConfiguration(
      serverUrl: serverUrl ?? this.serverUrl,
      realm: realm ?? this.realm,
      clientId: clientId ?? this.clientId,
    );
  }

  @override
  List<Object?> get props => [
    serverUrl,
    realm,
    clientId,
  ];

  /// Creates a Json map from a OpenIdClientConfiguration
  Map<String, dynamic> toJson() => <String, dynamic>{
    'serverUrl': serverUrl,
    'realm': realm,
    'clientId': clientId,
  };

  /// Creates a toString() override for OpenIdClientConfiguration
  @override
  String toString() =>
      'OpenIdClientConfiguration(serverUrl: $serverUrl, realm: $realm, clientId: $clientId)';
}
