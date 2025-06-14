class OpenIdMetadata {
  OpenIdMetadata({
    this.issuer,
    this.authorizationEndpoint,
    this.tokenEndpoint,
    this.introspectionEndpoint,
    this.userinfoEndpoint,
    this.endSessionEndpoint,
    this.frontchannelLogoutSessionSupported,
    this.frontchannelLogoutSupported,
    this.jwksUri,
    this.checkSessionIframe,
    this.grantTypesSupported,
    this.acrValuesSupported,
    this.responseTypesSupported,
    this.subjectTypesSupported,
    this.idTokenSigningAlgValuesSupported,
    this.idTokenEncryptionAlgValuesSupported,
    this.idTokenEncryptionEncValuesSupported,
    this.userinfoSigningAlgValuesSupported,
    this.userinfoEncryptionAlgValuesSupported,
    this.userinfoEncryptionEncValuesSupported,
    this.requestObjectSigningAlgValuesSupported,
    this.requestObjectEncryptionAlgValuesSupported,
    this.requestObjectEncryptionEncValuesSupported,
    this.responseModesSupported,
    this.registrationEndpoint,
    this.tokenEndpointAuthMethodsSupported,
    this.tokenEndpointAuthSigningAlgValuesSupported,
    this.introspectionEndpointAuthMethodsSupported,
    this.introspectionEndpointAuthSigningAlgValuesSupported,
    this.authorizationSigningAlgValuesSupported,
    this.authorizationEncryptionAlgValuesSupported,
    this.authorizationEncryptionEncValuesSupported,
    this.claimsSupported,
    this.claimTypesSupported,
    this.claimsParameterSupported,
    this.scopesSupported,
    this.requestParameterSupported,
    this.requestUriParameterSupported,
    this.requireRequestUriRegistration,
    this.codeChallengeMethodsSupported,
    this.tlsClientCertificateBoundAccessTokens,
    this.revocationEndpoint,
    this.revocationEndpointAuthMethodsSupported,
    this.revocationEndpointAuthSigningAlgValuesSupported,
    this.backchannelLogoutSupported,
    this.backchannelLogoutSessionSupported,
    this.deviceAuthorizationEndpoint,
    this.backchannelTokenDeliveryModesSupported,
    this.backchannelAuthenticationEndpoint,
    this.backchannelAuthenticationRequestSigningAlgValuesSupported,
    this.requirePushedAuthorizationRequests,
    this.pushedAuthorizationRequestEndpoint,
    this.mtlsEndpointAliases,
  });
  OpenIdMetadata.fromJson(Map<String, dynamic> json) {
    issuer = json['issuer'] as String?;
    authorizationEndpoint = json['authorization_endpoint'] as String?;
    tokenEndpoint = json['token_endpoint'] as String?;
    introspectionEndpoint = json['introspection_endpoint'] as String?;
    userinfoEndpoint = json['userinfo_endpoint'] as String?;
    endSessionEndpoint = json['end_session_endpoint'] as String?;
    frontchannelLogoutSessionSupported =
        json['frontchannel_logout_session_supported'] as bool?;
    frontchannelLogoutSupported =
        json['frontchannel_logout_supported'] as bool?;
    jwksUri = json['jwks_uri'] as String?;
    checkSessionIframe = json['check_session_iframe'] as String?;
    grantTypesSupported =
        json['grant_types_supported'].cast<String>() as List<String>?;
    acrValuesSupported =
        json['acr_values_supported'].cast<String>() as List<String>?;
    responseTypesSupported =
        json['response_types_supported'].cast<String>() as List<String>?;
    subjectTypesSupported =
        json['subject_types_supported'].cast<String>() as List<String>?;
    idTokenSigningAlgValuesSupported =
        json['id_token_signing_alg_values_supported'].cast<String>()
            as List<String>?;
    idTokenEncryptionAlgValuesSupported =
        json['id_token_encryption_alg_values_supported'].cast<String>()
            as List<String>?;
    idTokenEncryptionEncValuesSupported =
        json['id_token_encryption_enc_values_supported'].cast<String>()
            as List<String>?;
    userinfoSigningAlgValuesSupported =
        json['userinfo_signing_alg_values_supported'].cast<String>()
            as List<String>?;
    userinfoEncryptionAlgValuesSupported =
        json['userinfo_encryption_alg_values_supported'].cast<String>()
            as List<String>?;
    userinfoEncryptionEncValuesSupported =
        json['userinfo_encryption_enc_values_supported'].cast<String>()
            as List<String>?;
    requestObjectSigningAlgValuesSupported =
        json['request_object_signing_alg_values_supported'].cast<String>()
            as List<String>?;
    requestObjectEncryptionAlgValuesSupported =
        json['request_object_encryption_alg_values_supported'].cast<String>()
            as List<String>?;
    requestObjectEncryptionEncValuesSupported =
        json['request_object_encryption_enc_values_supported'].cast<String>()
            as List<String>?;
    responseModesSupported =
        json['response_modes_supported'].cast<String>() as List<String>?;
    registrationEndpoint = json['registration_endpoint'] as String?;
    tokenEndpointAuthMethodsSupported =
        json['token_endpoint_auth_methods_supported'].cast<String>()
            as List<String>?;
    tokenEndpointAuthSigningAlgValuesSupported =
        json['token_endpoint_auth_signing_alg_values_supported'].cast<String>()
            as List<String>?;
    introspectionEndpointAuthMethodsSupported =
        json['introspection_endpoint_auth_methods_supported'].cast<String>()
            as List<String>?;
    introspectionEndpointAuthSigningAlgValuesSupported =
        json['introspection_endpoint_auth_signing_alg_values_supported']
                .cast<String>()
            as List<String>?;
    authorizationSigningAlgValuesSupported =
        json['authorization_signing_alg_values_supported'].cast<String>()
            as List<String>?;
    authorizationEncryptionAlgValuesSupported =
        json['authorization_encryption_alg_values_supported'].cast<String>()
            as List<String>?;
    authorizationEncryptionEncValuesSupported =
        json['authorization_encryption_enc_values_supported'].cast<String>()
            as List<String>?;
    claimsSupported = json['claims_supported'].cast<String>() as List<String>?;
    claimTypesSupported =
        json['claim_types_supported'].cast<String>() as List<String>?;
    claimsParameterSupported = json['claims_parameter_supported'] as bool?;
    scopesSupported = json['scopes_supported'].cast<String>() as List<String>?;
    requestParameterSupported = json['request_parameter_supported'] as bool?;
    requestUriParameterSupported =
        json['request_uri_parameter_supported'] as bool?;
    requireRequestUriRegistration =
        json['require_request_uri_registration'] as bool?;
    codeChallengeMethodsSupported =
        json['code_challenge_methods_supported'].cast<String>()
            as List<String>?;
    tlsClientCertificateBoundAccessTokens =
        json['tls_client_certificate_bound_access_tokens'] as bool?;
    revocationEndpoint = json['revocation_endpoint'] as String?;
    revocationEndpointAuthMethodsSupported =
        json['revocation_endpoint_auth_methods_supported'].cast<String>()
            as List<String>?;
    revocationEndpointAuthSigningAlgValuesSupported =
        json['revocation_endpoint_auth_signing_alg_values_supported']
                .cast<String>()
            as List<String>?;
    backchannelLogoutSupported = json['backchannel_logout_supported'] as bool?;
    backchannelLogoutSessionSupported =
        json['backchannel_logout_session_supported'] as bool?;
    deviceAuthorizationEndpoint =
        json['device_authorization_endpoint'] as String?;
    backchannelTokenDeliveryModesSupported =
        json['backchannel_token_delivery_modes_supported'].cast<String>()
            as List<String>?;
    backchannelAuthenticationEndpoint =
        json['backchannel_authentication_endpoint'] as String?;
    backchannelAuthenticationRequestSigningAlgValuesSupported =
        json['backchannel_authentication_request_signing_alg_values_supported']
                .cast<String>()
            as List<String>?;
    requirePushedAuthorizationRequests =
        json['require_pushed_authorization_requests'] as bool?;
    pushedAuthorizationRequestEndpoint =
        json['pushed_authorization_request_endpoint'] as String?;
    mtlsEndpointAliases = json['mtls_endpoint_aliases'] != null
        ? new MtlsEndpointAliases.fromJson(
            json['mtls_endpoint_aliases'] as Map<String, dynamic>,
          )
        : null;
  }
  String? issuer;
  String? authorizationEndpoint;
  String? tokenEndpoint;
  String? introspectionEndpoint;
  String? userinfoEndpoint;
  String? endSessionEndpoint;
  bool? frontchannelLogoutSessionSupported;
  bool? frontchannelLogoutSupported;
  String? jwksUri;
  String? checkSessionIframe;
  List<String>? grantTypesSupported;
  List<String>? acrValuesSupported;
  List<String>? responseTypesSupported;
  List<String>? subjectTypesSupported;
  List<String>? idTokenSigningAlgValuesSupported;
  List<String>? idTokenEncryptionAlgValuesSupported;
  List<String>? idTokenEncryptionEncValuesSupported;
  List<String>? userinfoSigningAlgValuesSupported;
  List<String>? userinfoEncryptionAlgValuesSupported;
  List<String>? userinfoEncryptionEncValuesSupported;
  List<String>? requestObjectSigningAlgValuesSupported;
  List<String>? requestObjectEncryptionAlgValuesSupported;
  List<String>? requestObjectEncryptionEncValuesSupported;
  List<String>? responseModesSupported;
  String? registrationEndpoint;
  List<String>? tokenEndpointAuthMethodsSupported;
  List<String>? tokenEndpointAuthSigningAlgValuesSupported;
  List<String>? introspectionEndpointAuthMethodsSupported;
  List<String>? introspectionEndpointAuthSigningAlgValuesSupported;
  List<String>? authorizationSigningAlgValuesSupported;
  List<String>? authorizationEncryptionAlgValuesSupported;
  List<String>? authorizationEncryptionEncValuesSupported;
  List<String>? claimsSupported;
  List<String>? claimTypesSupported;
  bool? claimsParameterSupported;
  List<String>? scopesSupported;
  bool? requestParameterSupported;
  bool? requestUriParameterSupported;
  bool? requireRequestUriRegistration;
  List<String>? codeChallengeMethodsSupported;
  bool? tlsClientCertificateBoundAccessTokens;
  String? revocationEndpoint;
  List<String>? revocationEndpointAuthMethodsSupported;
  List<String>? revocationEndpointAuthSigningAlgValuesSupported;
  bool? backchannelLogoutSupported;
  bool? backchannelLogoutSessionSupported;
  String? deviceAuthorizationEndpoint;
  List<String>? backchannelTokenDeliveryModesSupported;
  String? backchannelAuthenticationEndpoint;
  List<String>? backchannelAuthenticationRequestSigningAlgValuesSupported;
  bool? requirePushedAuthorizationRequests;
  String? pushedAuthorizationRequestEndpoint;
  MtlsEndpointAliases? mtlsEndpointAliases;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['issuer'] = issuer;
    data['authorization_endpoint'] = authorizationEndpoint;
    data['token_endpoint'] = tokenEndpoint;
    data['introspection_endpoint'] = introspectionEndpoint;
    data['userinfo_endpoint'] = userinfoEndpoint;
    data['end_session_endpoint'] = endSessionEndpoint;
    data['frontchannel_logout_session_supported'] =
        frontchannelLogoutSessionSupported;
    data['frontchannel_logout_supported'] = frontchannelLogoutSupported;
    data['jwks_uri'] = jwksUri;
    data['check_session_iframe'] = checkSessionIframe;
    data['grant_types_supported'] = grantTypesSupported;
    data['acr_values_supported'] = acrValuesSupported;
    data['response_types_supported'] = responseTypesSupported;
    data['subject_types_supported'] = subjectTypesSupported;
    data['id_token_signing_alg_values_supported'] =
        idTokenSigningAlgValuesSupported;
    data['id_token_encryption_alg_values_supported'] =
        idTokenEncryptionAlgValuesSupported;
    data['id_token_encryption_enc_values_supported'] =
        idTokenEncryptionEncValuesSupported;
    data['userinfo_signing_alg_values_supported'] =
        userinfoSigningAlgValuesSupported;
    data['userinfo_encryption_alg_values_supported'] =
        userinfoEncryptionAlgValuesSupported;
    data['userinfo_encryption_enc_values_supported'] =
        userinfoEncryptionEncValuesSupported;
    data['request_object_signing_alg_values_supported'] =
        requestObjectSigningAlgValuesSupported;
    data['request_object_encryption_alg_values_supported'] =
        requestObjectEncryptionAlgValuesSupported;
    data['request_object_encryption_enc_values_supported'] =
        requestObjectEncryptionEncValuesSupported;
    data['response_modes_supported'] = responseModesSupported;
    data['registration_endpoint'] = registrationEndpoint;
    data['token_endpoint_auth_methods_supported'] =
        tokenEndpointAuthMethodsSupported;
    data['token_endpoint_auth_signing_alg_values_supported'] =
        tokenEndpointAuthSigningAlgValuesSupported;
    data['introspection_endpoint_auth_methods_supported'] =
        introspectionEndpointAuthMethodsSupported;
    data['introspection_endpoint_auth_signing_alg_values_supported'] =
        introspectionEndpointAuthSigningAlgValuesSupported;
    data['authorization_signing_alg_values_supported'] =
        authorizationSigningAlgValuesSupported;
    data['authorization_encryption_alg_values_supported'] =
        authorizationEncryptionAlgValuesSupported;
    data['authorization_encryption_enc_values_supported'] =
        authorizationEncryptionEncValuesSupported;
    data['claims_supported'] = claimsSupported;
    data['claim_types_supported'] = claimTypesSupported;
    data['claims_parameter_supported'] = claimsParameterSupported;
    data['scopes_supported'] = scopesSupported;
    data['request_parameter_supported'] = requestParameterSupported;
    data['request_uri_parameter_supported'] = requestUriParameterSupported;
    data['require_request_uri_registration'] = requireRequestUriRegistration;
    data['code_challenge_methods_supported'] = codeChallengeMethodsSupported;
    data['tls_client_certificate_bound_access_tokens'] =
        tlsClientCertificateBoundAccessTokens;
    data['revocation_endpoint'] = revocationEndpoint;
    data['revocation_endpoint_auth_methods_supported'] =
        revocationEndpointAuthMethodsSupported;
    data['revocation_endpoint_auth_signing_alg_values_supported'] =
        revocationEndpointAuthSigningAlgValuesSupported;
    data['backchannel_logout_supported'] = backchannelLogoutSupported;
    data['backchannel_logout_session_supported'] =
        backchannelLogoutSessionSupported;
    data['device_authorization_endpoint'] = deviceAuthorizationEndpoint;
    data['backchannel_token_delivery_modes_supported'] =
        backchannelTokenDeliveryModesSupported;
    data['backchannel_authentication_endpoint'] =
        backchannelAuthenticationEndpoint;
    data['backchannel_authentication_request_signing_alg_values_supported'] =
        backchannelAuthenticationRequestSigningAlgValuesSupported;
    data['require_pushed_authorization_requests'] =
        requirePushedAuthorizationRequests;
    data['pushed_authorization_request_endpoint'] =
        pushedAuthorizationRequestEndpoint;
    if (mtlsEndpointAliases != null) {
      data['mtls_endpoint_aliases'] = mtlsEndpointAliases!.toJson();
    }
    return data;
  }
}

class MtlsEndpointAliases {
  MtlsEndpointAliases({
    this.tokenEndpoint,
    this.revocationEndpoint,
    this.introspectionEndpoint,
    this.deviceAuthorizationEndpoint,
    this.registrationEndpoint,
    this.userinfoEndpoint,
    this.pushedAuthorizationRequestEndpoint,
    this.backchannelAuthenticationEndpoint,
  });
  MtlsEndpointAliases.fromJson(Map<String, dynamic> json) {
    tokenEndpoint = json['token_endpoint'] as String?;
    revocationEndpoint = json['revocation_endpoint'] as String?;
    introspectionEndpoint = json['introspection_endpoint'] as String?;
    deviceAuthorizationEndpoint =
        json['device_authorization_endpoint'] as String?;
    registrationEndpoint = json['registration_endpoint'] as String?;
    userinfoEndpoint = json['userinfo_endpoint'] as String?;
    pushedAuthorizationRequestEndpoint =
        json['pushed_authorization_request_endpoint'] as String?;
    backchannelAuthenticationEndpoint =
        json['backchannel_authentication_endpoint'] as String?;
  }
  String? tokenEndpoint;
  String? revocationEndpoint;
  String? introspectionEndpoint;
  String? deviceAuthorizationEndpoint;
  String? registrationEndpoint;
  String? userinfoEndpoint;
  String? pushedAuthorizationRequestEndpoint;
  String? backchannelAuthenticationEndpoint;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['token_endpoint'] = tokenEndpoint;
    data['revocation_endpoint'] = revocationEndpoint;
    data['introspection_endpoint'] = introspectionEndpoint;
    data['device_authorization_endpoint'] = deviceAuthorizationEndpoint;
    data['registration_endpoint'] = registrationEndpoint;
    data['userinfo_endpoint'] = userinfoEndpoint;
    data['pushed_authorization_request_endpoint'] =
        pushedAuthorizationRequestEndpoint;
    data['backchannel_authentication_endpoint'] =
        backchannelAuthenticationEndpoint;
    return data;
  }
}
