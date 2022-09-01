// ignore_for_file: non_constant_identifier_names

class Body {
  late String waist_hip_ratio;
  late String waist_height_ratio;
  late double Waist_circum;
  late double bodyfat;
  late int chest;
  late int waist;
  late int hips;
  late int thighs;
  late String datetime;

  Body({
    required this.waist_hip_ratio,
    required this.waist_height_ratio,
    required this.Waist_circum,
    required this.bodyfat,
    required this.chest,
    required this.hips,
    required this.thighs,
    required this.waist,
    required this.datetime,
  });
}

List<Body> body_list = [
  Body(
      waist_hip_ratio: '0.85-0.89',
      waist_height_ratio: '6\'1"',
      Waist_circum: 35.5,
      bodyfat: 17,
      chest: 38,
      waist: 33,
      hips: 40,
      thighs: 34,
      datetime: '16 March 2022 - 02:30 am'),
  Body(
      waist_hip_ratio: '0.95-0.99',
      waist_height_ratio: '5\'11"',
      Waist_circum: 33.5,
      bodyfat: 19,
      chest: 40,
      waist: 43,
      hips: 39,
      thighs: 35,
      datetime: '16 March 2022 - 02:30 am'),
];
