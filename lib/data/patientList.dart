import 'package:atsclepius/data/patient.dart';

class PatientList {
  var list;
  PatientList() {
    list = List(3);
    list[0] = new Patient(
        "Sally Fields", // name
        "Friend", // relationship
        "January 20th, 1972",
        "She's feeling much better, and will be discharged soon. She ate a full breakfast, walked around the ward several times, and was very talkative and cheerful.",
        "Very Good");

    list[1] = new Patient(
        "Gary Doe", // name
        "Relative", // relationship
        "January 9th, 1984",
        "His breathing and appetite has improved. His spirits are up.",
        "Good, and Improving");

   list[2] = new Patient(
        "Samantha Smith", // name
        "Friend", // relationship
        "February 4th, 1996",
        "Her surgery went very well, and she's recovering very well.",
        "Very Good");
  }
}
