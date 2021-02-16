/* patient.dart - Class
 *
 * INCOMPLETE
 * 
 * Holds the data for a patient. Extremely rudimentary at the moment.
 * 
 * TO-DO:
 * -Research the type of data which be retained for a patient.
 * -Create getters/setters.
 * -Likely requires further class implementation, such as 'Visit' and 'Doctor'.
 */

class Patient {
  String name;
  String relationship;
  String date;
  String summary;
  String status;

  Patient(String name, String relationship, String date, String summary,
      String status) {
    this.name = name;
    this.relationship = relationship;
    this.date = date;
    this.summary = summary;
    this.status = status;
  }
}
