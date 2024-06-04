import 'package:medicoplusconsent/domain/api/apiClient.dart';

class DeviceRegistration {
  static Future<ApiResponseModel> register(String? fcmToken, String? deviceName) async {
    if (fcmToken != null) 
    {
      Map<String, dynamic> dataMap = Map();
      dataMap.addAll({"FCMCode": fcmToken, "DeviceName": deviceName});
      ApiClient client = ApiClient();
      var result= await client.post("Tablet", data: dataMap);
      return result;
    }
    else
    {
      return ApiResponseModel(false,"No FCM Token");
    }
  }
}
