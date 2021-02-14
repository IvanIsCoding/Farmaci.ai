/* Holds information for a patient's medical update */

class PatientUpdate {
  DateTime date;
  String summary;
  String status;

  PatientUpdate(DateTime date, String summary, String status) {
    this.date = date;
    this.summary = summary;
    this.status = status;
  }
}
