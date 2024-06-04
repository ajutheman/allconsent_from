import 'package:medicoplusconsent/domain/api/apiClient.dart';
import 'dart:convert';

class MriRepsository {
  static submitConsent(dynamic consent) async {
    if (consent != null) {
    
      final body = jsonEncode(consent.toJson());
      ApiClient client = ApiClient();
      client.submitConsent("api/MRIConsent/MRIPostData", body);
    }
  }
}
