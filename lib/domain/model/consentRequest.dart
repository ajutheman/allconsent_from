class ConsentRequestModel {
  String doctorName = "";
  String patientName = "";
  String patDocNo = "";
  String consentDocNo = "";
  String doctorDocNo = "";
  String clinicName = "";
  String language = "";
  ConsentRequestModel({
    required this.doctorName,
    required this.patientName,
    required this.patDocNo,
    required this.consentDocNo,
    required this.clinicName,
    required this.doctorDocNo,
    required this.language
  });
}


//{"PatDocNo":"0000005","CosentDocNo":"025","DoctorName":"Dr Omnia Hassan","PatientName":"training  today","DoctorDocNo":null,"ClinicName":"Bonita Medical Center","Language":"English"}