import 'package:atsclepius/data/patient.dart';

class PatientList {
  var list;
  PatientList() {
    list = List(6);
    list[0] = new Patient(
        "@bob has a new procedure log", // name
        "Friend", // relationship
        "April 2nd, 2021",
        "She's feeling much better, and will be discharged soon. She ate a full breakfast, walked around the ward several times, and was very talkative and cheerful.",
        "Very Good");

    list[1] = new Patient(
        "@bob has a new prescription drug",
        "Friend", // relationship
        "April 2nd, 2021",
        "His breathing and appetite has improved. His spirits are up.",
        "Good, and Improving");

    list[2] = new Patient(
        "@bob has a new prescription drug",
        "Friend", // relationship
        "April 2nd, 2021",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
    list[3] = new Patient(
        "@bob has a new prescription drug",
        "Friend", // relationship
        "April 2nd, 2021",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
    list[4] = new Patient(
        "@bob moved to Floor 2, Room A", // name
        "Friend", // relationship
        "April 2nd, 2021",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
    list[5] = new Patient(
        "@bob checked in at Hospital", // name
        "Friend", // relationship
        "April 2nd, 2021",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
  }
}
