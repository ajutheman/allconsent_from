import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:medicoplusconsent/domain/api/apiClient.dart';
import 'package:medicoplusconsent/domain/api/DeviceRegistration.dart';
import 'package:medicoplusconsent/domain/model/consentRequest.dart';
import 'package:medicoplusconsent/domain/model/MamogramConsentModel.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'consent_event.dart';
part 'consent_state.dart';



Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.

  print("Handling a background message: ${message.messageId}");
}

class ConsentBloc extends Bloc<ConsentInitial, ConsentState> {

  String deviceName = 'NoDeviceBlock';
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final connection=InternetConnection();
  var _messageController = StreamController<ConsentRequestModel>.broadcast();
  static bool internetConnected=true;  
  ConsentBloc() : super(ConsentInitial()) 
  {
        
        connection.onStatusChange.listen((InternetStatus status) 
        {
          if(status == InternetStatus.disconnected)
          {
            internetConnected =false;
            emit(ConsentInitial());
          }
          else
          {
            internetConnected = true;
            emit(ConsentInitial());
          }
        });

    on<ConsentInitial>((event, emit) async 
    {
      try 
      { 
        SharedPreferences prefs =  await SharedPreferences.getInstance();
        var baseUrl = prefs.getString('ConnectionString');        
        var devName = prefs.getString('DeviceName'); 
          // ignore: unnecessary_null_comparison
       if(devName!=null)
       {
            deviceName = devName.toString();
       } 

        if(!internetConnected)
        {
            emit(NoInternetSate());
        }      
        else if (baseUrl == null || baseUrl == "") 
        {
          emit(ConsentRegister());
        } 
        else 
        {
          ApiClient.baseUrl = baseUrl;         
          await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
            alert: true,
            badge: true,
            sound: true,
          );
          FirebaseMessaging messaging = FirebaseMessaging.instance;
          FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);          
          await messaging.requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            provisional: false,
            sound: true,
          );

         var fcmToken = await messaging.getToken();
         ApiResponseModel regResult =await DeviceRegistration.register(fcmToken, deviceName);
         if(regResult.isSuccess)
         {
           emit(ConsentRegistered(deviceName: deviceName));
          _messageController = StreamController<ConsentRequestModel>.broadcast();
          FirebaseMessaging.onMessage.listen((RemoteMessage message) async 
          {
                var result = fromJson(message.notification?.body);
                _messageController.sink.add(result);
          });          
         }       
      }
      } catch (e) 
      {
        //
      }
      
      });
  }
  Stream<ConsentRequestModel> get message => _messageController.stream;
  void dispose() 
  {
    _messageController.close();
  }
}

fromJson(String? jsonString) 
{
  if (jsonString == null) {
    return null;
  }
  Map<String, dynamic> jsonData = json.decode(
    jsonString,
    reviver: (key, value) {    
      if (value == null) 
      {
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
    language: jsonData['Language']
  );
}
