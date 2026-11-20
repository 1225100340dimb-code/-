import 'dart:io' show Platform;

/// Dirección de la API según dónde corre la app.
String urlBaseApi() {
  const manual = String.fromEnvironment('API_URL');

  if (manual.isNotEmpty) return manual;

  if (Platform.isAndroid) {
    return 'http://172.22.10.146:3000';
  }

  return 'http://localhost:3000';
}
