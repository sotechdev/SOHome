import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:sohome_client/app/app.dart';
import 'package:sohome_client/data/entities/open_id_client_configuration.dart';
import 'package:sohome_client/data/entities/user.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthRepository with Logging {
  AuthRepository({required this.clientConfiguration});
  final OpenIdClientConfiguration clientConfiguration;

  final Box<String> _authDb = Hive.box(Constants.authDbName);
  final _credentialKey = 'keycloak_credential';
  final int _authPort = 8888;

  Future<User?> signIn() async {
    final client = await _getOidcClient();
    final authenticator = Authenticator(
      client,
      port: _authPort,
      scopes: ['openid', 'profile', 'email', 'offline_access'],
      urlLancher: (url) async {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
        } else {
          throw LaunchUrlException(
            'Erro ao abrir o launcher para autenticação!',
          );
        }
      },
    );
    final credential = await authenticator.authorize();

    final tokenResponse = await credential.getTokenResponse();
    if (tokenResponse.accessToken == null ||
        tokenResponse.refreshToken == null) {
      throw Exception('Erro ao obter os tokens de acesso.');
    }
    log.finest('Token de acesso: ${tokenResponse.accessToken}');
    final credentialJson = jsonEncode(credential.toJson());
    await _authDb.put(_credentialKey, credentialJson);

    return _getUserFromCredential(
      credential,
      prefetchedResponse: tokenResponse,
    );
  }

  Future<void> signOut() async {
    final client = await _getOidcClient();
    final credential = await getStoredCredential();
    if (credential != null) {
      final endSessionUrl = client.issuer.metadata.endSessionEndpoint!;
      await launchUrl(endSessionUrl, mode: LaunchMode.externalApplication);
    }
  }

  Future<Client> _getOidcClient() async {
    final uri = clientConfiguration.serverUri;
    final issuer = await Issuer.discover(uri);
    return Client(issuer, clientConfiguration.clientId);
  }

  Future<Credential?> getStoredCredential() async {
    final storedCredentialJson = _authDb.get(_credentialKey);
    if (storedCredentialJson != null) {
      final credentialMap =
          jsonDecode(storedCredentialJson) as Map<String, dynamic>;
      return Credential.fromJson(credentialMap);
    }
    return null;
  }

  Future<User?> getAuthenticatedUser() async {
    final credential = await getStoredCredential();
    if (credential != null) {
      return _getUserFromCredential(credential);
    }
    return null;
  }

  Future<User> _getUserFromCredential(
    Credential credential, {
    TokenResponse? prefetchedResponse,
  }) async {
    final tokenResponse =
        prefetchedResponse ?? await credential.getTokenResponse();
    log.info('Token de acesso: ${tokenResponse.accessToken}');
    final userInfo = await credential.getUserInfo();
    return User(
      id: userInfo.email ?? '',
      email: userInfo.email ?? '',
      username: userInfo.preferredUsername ?? '',
      name: userInfo.name ?? '',
      accessToken: tokenResponse.accessToken ?? '',
      refreshToken: tokenResponse.refreshToken ?? '',
    );
  }
}
