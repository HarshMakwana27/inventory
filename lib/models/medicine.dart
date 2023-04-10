// ignore_for_file: public_member_api_docs, sort_constructors_first

const String medicineTable = 'medicineTable';

class MedicineFields {
  static const String medicineId = 'medicineId';
  static const String medicineName = 'medicineName';
  static const String medicineDescription = 'medicineDescription';
  static const String medicineQuantity = 'medicineQuantity';
  static const String medicineType = 'medicineType';
}

class Medicine {
  late final int? medicineId;
  late final String medicineName;
  late final String medicineDescription;
  late final String medicineQuantity;
  late final String medicineType;
  Medicine(
      {this.medicineId,
      required this.medicineName,
      required this.medicineDescription,
      required this.medicineQuantity,
      required this.medicineType});

  Map<String, Object?> toJson() => {
        MedicineFields.medicineId: medicineId,
        MedicineFields.medicineName: medicineName,
        MedicineFields.medicineDescription: medicineDescription,
        MedicineFields.medicineQuantity: medicineQuantity,
        MedicineFields.medicineType: medicineType
      };

  Medicine copy(
          {int? id,
          String? name,
          String? description,
          String? quantity,
          String? medicineType}) =>
      Medicine(
          medicineId: id ?? this.medicineId,
          medicineName: name ?? this.medicineName,
          medicineDescription: description ?? this.medicineDescription,
          medicineQuantity: quantity ?? this.medicineQuantity,
          medicineType: medicineType ?? this.medicineType);
  static Medicine fromJson(Map<String, Object?> json) => Medicine(
      medicineId: json[MedicineFields.medicineId] as int?,
      medicineName: json[MedicineFields.medicineName] as String,
      medicineDescription: json[MedicineFields.medicineDescription] as String,
      medicineQuantity: json[MedicineFields.medicineQuantity] as String,
      medicineType: json[MedicineFields.medicineType] as String);
}
