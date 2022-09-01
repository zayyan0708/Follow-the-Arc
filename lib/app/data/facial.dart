// ignore_for_file: non_constant_identifier_names

class Facial {
  late int heart_rate;
  late int blood_pressure;
  late int breathing_rate;
  late int heart_rate_variability;
  late int heart_beats;
  late int cardiac_workload;
  late String datetime;

  Facial({
    required this.heart_rate,
    required this.blood_pressure,
    required this.breathing_rate,
    required this.heart_rate_variability,
    required this.heart_beats,
    required this.cardiac_workload,
    required this.datetime,
  });
}

List<Facial> facial_data = [
  Facial(
      heart_rate: 63,
      blood_pressure: 50,
      breathing_rate: 5,
      heart_rate_variability: 45,
      heart_beats: 120,
      cardiac_workload: 63,
      datetime: '16 March 2022 - 02:30 am'),
  Facial(
      heart_rate: 65,
      blood_pressure: 56,
      breathing_rate: 7,
      heart_rate_variability: 50,
      heart_beats: 130,
      cardiac_workload: 64,
      datetime: '16 April 2022 - 03:30 am'),
];
