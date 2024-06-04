class MamogramConsentModel {
  String name = '';
  int age = 0;
  bool periodsIsRegular = false;
  String lastDateOfPeriods = '';
  bool menopause = false;
  String menoPauseDate = '';
  bool hormoneReplacementTherapy = false;
  int ageAtFirstPregnancy = 0;
  int numberOfPregnancies = 0;
  int numberOfBirths = 0;
  bool lactation = false;
  int lactationYears = 0;
  bool oralContraceptives = false;
  int oralContraceptiveYears = 0;
  String aimOfStudy = '';
  bool lump = false;
  String lumpDetails = '';
  bool pain = false;
  String painDetails = '';
  bool discharge = false;
  String dischargeDetails = '';
  bool nippleCharges = false;
  String nippleChargeDetails = '';
  bool skinChanges = false;
  String skinChangeDetails = '';
  bool axillaryLump = false;
  String axillaryLumpDetails = '';
  String lastMammogramProcedure = '';
  bool breastSurgery = false;
  String breastSurgeryDetails = '';
  bool breastCancer = false;
  String breastCancerDetails = '';
  bool familyHistoryCancer = false;
  String familyHistoryCancerDetails = '';
  bool personalHistoryOther = false;
  String personalHistoryOtherDetails = '';
  String patientSign = '';
  String radioGrapherSign = '';
  String consentDocNo = '';
  String patDocNo = '';
  MamogramConsentModel();

  Map<String, dynamic> toJson() 
  {
    return {
      'name': name,
      'age': age,
      'periodsIsRegular': periodsIsRegular,
      'lastDateOfPeriods': lastDateOfPeriods,
      'menopause': menopause,
      'menoPauseDate': menoPauseDate,
      'hormoneReplacementTherapy': hormoneReplacementTherapy,
      'ageAtFirstPregnancy': ageAtFirstPregnancy,
      'numberOfPregnancies': numberOfPregnancies,
      'numberOfBirths': numberOfBirths,
      'lactation': lactation,
      'lactationYears': lactationYears,
      'oralContraceptives': oralContraceptives,
      'oralContraceptiveYears': oralContraceptiveYears,
      'aimOfStudy': aimOfStudy,
      'lump': lump,
      'lumpDetails': lumpDetails,
      'pain': pain,
      'painDetails': painDetails,
      'discharge': discharge,
      'dischargeDetails': dischargeDetails,
      'nippleCharges': nippleCharges,
      'nippleChargeDetails': nippleChargeDetails,
      'skinChanges': skinChanges,
      'skinChangeDetails': skinChangeDetails,
      'axillaryLump': axillaryLump,
      'axillaryLumpDetails': axillaryLumpDetails,
      'lastMammogramProcedure': lastMammogramProcedure,
      'breastSurgery': breastSurgery,
      'breastSurgeryDetails': breastSurgeryDetails,
      'breastCancer': breastCancer,
      'breastCancerDetails': breastCancerDetails,
      'familyHistoryCancer': familyHistoryCancer,
      'familyHistoryCancerDetails': familyHistoryCancerDetails,
      'personalHistoryOther': personalHistoryOther,
      'personalHistoryOtherDetails': personalHistoryOtherDetails,
      'patientSign': patientSign,
      'radioGrapherSign': radioGrapherSign,
      'consentDocNo': consentDocNo,
      'patDocNo': patDocNo,
    };
  }
}
