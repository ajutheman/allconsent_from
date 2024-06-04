
import 'package:medicoplusconsent/domain/api/apiClient.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';

class SignatureRepository {
  static submitConsent(ConsentRequestModel? consent, String signature) async {
    if (consent != null)
    {
      Map<String, dynamic> dataMap = Map();

      dataMap.addAll({
        "patientDocNo": consent.patDocNo,
        "consentDocNo": consent.consentDocNo,
        "signature": signature,
        "consentSaveDocNo": "[NONE]"
      });

      ApiClient client = ApiClient();
      client.post("Signature", data: dataMap);
    }
  }
}
