import 'package:clothes_app/features/medicines/pharmacy/data/medicines_pharmacy_model.dart';

class MedicinesPharmaciesDummyData {
  final pharmaciesList = <MedicinesPharmacyModel>[
    MedicinesPharmacyModel(
      id: '000001',
      name: 'CVS Corporation',
      asset: 'assets/icons/icon_40.png',
      adress: '16 Marshall Dr. Hempstead, NY 11550',
      distance: '2.5 ml',
      scheduleWeekdays: 'from 9:30 AM to 11:00 AM',
      scheduleWeekends: 'Closed',
      phone: '202-555-0195',
    ),
    MedicinesPharmacyModel(
      id: '000002',
      name: 'Walgreens',
      asset: 'assets/icons/icon_41.png',
      adress: '88 Stepan Bandera avenue, NY 14250',
      distance: '5.5 ml',
      scheduleWeekdays: 'from 9:00 AM to 04:00 PM',
      scheduleWeekends: 'from 10:00 AM to 01:00 PM',
      phone: '202-555-0195',
    ),
    MedicinesPharmacyModel(
      id: '000003',
      name: 'Rite Aid Corporation',
      asset: 'assets/icons/icon_42.png',
      adress: 'Freedom Boulevard 15, NY 14250',
      distance: '3.0 ml',
      scheduleWeekdays: 'from 9:00 AM to 04:00 PM',
      scheduleWeekends: 'from 10:00 AM to 01:00 PM',
      phone: '202-555-0195',
    ),
    MedicinesPharmacyModel(
      id: '000004',
      name: 'Kroger Company',
      asset: 'assets/icons/icon_43.png',
      adress: 'Big Lake str. 3, NY 14250',
      distance: '4.3 ml',
      scheduleWeekdays: 'from 9:00 AM to 04:00 PM',
      scheduleWeekends: 'Closed',
      phone: '202-555-0195',
    ),
  ];
}
