class mriSafetyTab {
  String patDocNo = '';
  String consentDocNo = '';
  String consentSaveDocNo = '';
  String name = '';
  String date = '';
  String gender = '';
  int age = 0;
  double weight = 0.0;
  bool hasPacemaker = false;
  bool hasStimulator = false;
  bool hasDeepBrainStimulator = false;
  bool hasHeadSurgery = false;
  bool hasMetallicEarImplant = false;
  bool hasHearingAid = false;
  bool hasMetallicFragments = false;
  bool hasMetallicOrMagneticImplants = false;
  bool hasSurgery = false;
  bool hasAllergy = false;
  bool hasPregnancy = false;
  bool isBreastFeeding = false;
  String surgeryDetails = '';
  String allergryDetails = '';
  String patientSign = '';
  String radioGrapherSign = '';

  mriSafetyTab();

  Map<String, dynamic> toJson() {
    return {
      'patDocNo': patDocNo,
      'consentDocNo': consentDocNo,
      'consentSaveDocNo': consentSaveDocNo,
      'name': name,
      'date': date,
      'gender': gender,
      'age': age,
      'weight': weight,
      'hasPacemaker': hasPacemaker,
      'hasStimulator': hasStimulator,
      'hasDeepBrainStimulator': hasDeepBrainStimulator,
      'hasHeadSurgery': hasHeadSurgery,
      'hasMetallicEarImplant': hasMetallicEarImplant,
      'hasHearingAid': hasHearingAid,
      'hasMetallicFragments': hasMetallicFragments,
      'hasMetallicOrMagneticImplants': hasMetallicOrMagneticImplants,
      'hasSurgery': hasSurgery,
      'hasAllergy': hasAllergy,
      'hasPregnancy': hasPregnancy,
      'surgeryDetails': surgeryDetails,
      'allergryDetails': allergryDetails,
      'patientSign': patientSign,
      'isBreastFeeding':isBreastFeeding,
      'radioGrapherSign': radioGrapherSign,
    };
  }
}
