enum TravelApartmentMostPopularFacilities {
  smoking(
    title: 'Non-smoking rooms',
    asset: 'assets/icons/icon_69.png',
  ),
  disabled(
    title: 'Facilities for disabled guests',
    asset: 'assets/icons/icon_70.png',
  ),
  privateParking(
    title: 'Private parking',
    asset: 'assets/icons/icon_71.png',
  ),
  freeWifi(
    title: 'Free WiFi',
    asset: 'assets/icons/icon_72.png',
  ),
  everywhereWifi(
    title: 'WiFi available in all areas',
    asset: 'assets/icons/icon_72.png',
  ),
  onSiteParking(
    title: 'On-site parking',
    asset: 'assets/icons/icon_71.png',
  ),
  bar(
    title: 'Bar',
    asset: 'assets/icons/icon_73.png',
  ),
  breakfast(
    title: 'Breakfast',
    asset: 'assets/icons/icon_74.png',
  );

  final String title;
  final String asset;

  const TravelApartmentMostPopularFacilities({
    required this.title,
    required this.asset,
  });
}
