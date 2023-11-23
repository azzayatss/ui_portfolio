import 'package:clothes_app/features/medicines/medicines_product/data/medicines_product_model.dart';

class MedicinesProductsDummyData {
  final productsList = <MedicinesProductModel>[
    MedicinesProductModel(
        asset: 'assets/icons/icon_31.png',
        name: 'Vicodin',
        price: 1309,
        description: 'Narcotic analgesic',
        count: 20,
        milligrams: 150,
        id: '000001'),
    MedicinesProductModel(
        asset: 'assets/icons/icon_28.png',
        name: 'Simvastatin',
        price: 761.10,
        description: 'Statins',
        count: 10,
        milligrams: 100,
        id: '000002'),
    MedicinesProductModel(
        asset: 'assets/icons/icon_29.png',
        name: 'Lisinopril',
        price: 11.12,
        description: 'Enzyme Inhibitors',
        count: 1,
        milligrams: 250,
        id: '000003'),
    MedicinesProductModel(
        asset: 'assets/icons/icon_30.png',
        name: 'Metformin',
        price: 1.18,
        description: 'Non-sulfonylureas',
        count: 35,
        milligrams: 300,
        id: '000004'),
    MedicinesProductModel(
        asset: 'assets/icons/icon_32.png',
        name: 'Ibandronat',
        price: 31.97,
        description: 'Bisphosphonates',
        count: 20,
        milligrams: 100,
        id: '000005'),
    MedicinesProductModel(
        asset: 'assets/icons/icon_31.png',
        name: 'Ibance',
        price: 87.10,
        description: 'CDK 4/6 inhibitors',
        count: 10,
        milligrams: 75,
        id: '000006'),
    MedicinesProductModel(
        asset: 'assets/icons/icon_31.png',
        name: 'Ibuprofen',
        price: 14.99,
        description: 'CDK 4/6 inhibitors',
        count: 25,
        milligrams: 125,
        id: '000007'),
  ];
}
