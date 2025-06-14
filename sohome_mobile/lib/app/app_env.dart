final class AppEnv {
  static const String keycloakUrl = String.fromEnvironment('KEYCLOAK_URL');
  static const String keycloakRealm = String.fromEnvironment('KEYCLOAK_REALM');
  static const String keycloakClientId = String.fromEnvironment(
    'KEYCLOAK_CLIENTID',
  );
}
