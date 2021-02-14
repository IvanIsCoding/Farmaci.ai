/* Tracked patient in friend's list */

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
