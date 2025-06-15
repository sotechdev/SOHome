import 'package:flutter/material.dart';

export 'app_env.dart';
export 'app_routes.dart';
export 'constants.dart';
export 'exceptions/launch_url_exception.dart';
export 'mixins/log_mixin.dart';
export 'view/app.dart';
export 'view/app_dashboard.dart';

AppBar getAppBar(String title) {
  return AppBar(
    title: Text(title),
  );
}
