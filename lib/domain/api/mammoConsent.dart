import 'dart:convert';
import 'package:medicoplusconsent/domain/api/apiClient.dart';
import 'package:medicoplusconsent/domain/model/MamogramConsentModel.dart';

class MammoConsentAPI {
  static Future<String> submitConsent(MamogramConsentModel consent) async {
    try {
 
      final body = jsonEncode(consent.toJson());
      ApiClient client = ApiClient();        
      await client.submitConsent("api/MamogramConsent/MamogramConsentPost", body);
      return "Success";
    } 
    catch (e)
    {
      return "Error";
    }   
    }
}
