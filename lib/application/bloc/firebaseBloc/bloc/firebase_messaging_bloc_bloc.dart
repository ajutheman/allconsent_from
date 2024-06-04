import 'dart:async';
import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';

class FirebaseMessagingBloc {
  final _messageController = StreamController<ConsentRequestModel>.broadcast();
  FirebaseMessagingBloc() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      var result = fromJson(message.notification?.body);
      _messageController.sink.add(result);
    });
  }
  Stream<ConsentRequestModel> get message => _messageController.stream;
  void dispose() {
    _messageController.close();
  }
}

fromJson(String? jsonString) {
  if (jsonString == null) {
    return null;
  }
  Map<String, dynamic> jsonData = json.decode(
    jsonString,
    reviver: (key, value) {
      // Filter out null values
      if (value == null) {
        return "Patient Name";
      } else {
        return value;
      }
    },
  );
  return ConsentRequestModel(
    doctorName: jsonData['DoctorName'],
    patientName: jsonData['PatientName'],
    patDocNo: jsonData['PatDocNo'],
    consentDocNo: jsonData['CosentDocNo'],
    doctorDocNo: jsonData['DoctorDocNo'],
    clinicName: jsonData['ClinicName'],
    language: 'English'
  );
}
