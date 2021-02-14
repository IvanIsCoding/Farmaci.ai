import "./patientUpdate.dart";

/* Tracked patient in friend's list */

class Patient {
  String name;
  String relationship;
  PatientUpdate update;

  Patient(String name, String relationship, DateTime date, String summary,
      String status) {
    this.name = name;
    this.relationship = relationship;
    this.update = update;
    this.update = new PatientUpdate(date, summary, status);
  }

  void statusUpdate(PatientUpdate update) {
    this.update = update;
  }

  DateTime date() {
    return this.update.date;
  }

  String summary() {
    return this.update.summary;
  }

  String status() {
    return this.update.status;
  }
}
