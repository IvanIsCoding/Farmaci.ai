import 'package:atsclepius/data/patient.dart';

class PatientList {
  var list;
  PatientList() {
    list = List(6);
    list[0] = new Patient(
        "", // name
        "Friend", // relationship
        "Floor 2, Room A",
        "She's feeling much better, and will be discharged soon. She ate a full breakfast, walked around the ward several times, and was very talkative and cheerful.",
        "Very Good");

    list[1] = new Patient(
        "@colin", // name
        "Relative", // relationship
        "Floor 2, Room B",
        "His breathing and appetite has improved. His spirits are up.",
        "Good, and Improving");

    list[2] = new Patient(
        "@jagan", // name
        "Friend", // relationship
        "Floor 2, Room C",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
    list[3] = new Patient(
        "@jagan", // name
        "Friend", // relationship
        "Floor 2, Room C",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
    list[4] = new Patient(
        "@jagan", // name
        "Friend", // relationship
        "Floor 2, Room C",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
    list[5] = new Patient(
        "@jagan", // name
        "Friend", // relationship
        "Floor 2, Room C",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
  }
}
