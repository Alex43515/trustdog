import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _filterBreeds = '';
  String get filterBreeds => _filterBreeds;
  set filterBreeds(String value) {
    _filterBreeds = value;
  }

  String _filterSex = '';
  String get filterSex => _filterSex;
  set filterSex(String value) {
    _filterSex = value;
  }

  String _filterPrice = '';
  String get filterPrice => _filterPrice;
  set filterPrice(String value) {
    _filterPrice = value;
  }

  String _filterAgeBucket = '';
  String get filterAgeBucket => _filterAgeBucket;
  set filterAgeBucket(String value) {
    _filterAgeBucket = value;
  }

  String _filterCity = '';
  String get filterCity => _filterCity;
  set filterCity(String value) {
    _filterCity = value;
  }

  int _page = 0;
  int get page => _page;
  set page(int value) {
    _page = value;
  }

  int _hitsPerPage = 0;
  int get hitsPerPage => _hitsPerPage;
  set hitsPerPage(int value) {
    _hitsPerPage = value;
  }

  double _ageMin = 0.0;
  double get ageMin => _ageMin;
  set ageMin(double value) {
    _ageMin = value;
  }

  double _ageMax = 120.0;
  double get ageMax => _ageMax;
  set ageMax(double value) {
    _ageMax = value;
  }

  double _priceMin = 0.0;
  double get priceMin => _priceMin;
  set priceMin(double value) {
    _priceMin = value;
  }

  double _priceMax = 5000.0;
  double get priceMax => _priceMax;
  set priceMax(double value) {
    _priceMax = value;
  }

  int _age = 0;
  int get age => _age;
  set age(int value) {
    _age = value;
  }

  String _search = '';
  String get search => _search;
  set search(String value) {
    _search = value;
  }

  String _video1 = '';
  String get video1 => _video1;
  set video1(String value) {
    _video1 = value;
  }

  String _video2 = '';
  String get video2 => _video2;
  set video2(String value) {
    _video2 = value;
  }

  String _video3 = '';
  String get video3 => _video3;
  set video3(String value) {
    _video3 = value;
  }

  List<String> _passportApp = [];
  List<String> get passportApp => _passportApp;
  set passportApp(List<String> value) {
    _passportApp = value;
  }

  void addToPassportApp(String value) {
    passportApp.add(value);
  }

  void removeFromPassportApp(String value) {
    passportApp.remove(value);
  }

  void removeAtIndexFromPassportApp(int index) {
    passportApp.removeAt(index);
  }

  void updatePassportAppAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    passportApp[index] = updateFn(_passportApp[index]);
  }

  void insertAtIndexInPassportApp(int index, String value) {
    passportApp.insert(index, value);
  }

  List<String> _micorchipAPP = [];
  List<String> get micorchipAPP => _micorchipAPP;
  set micorchipAPP(List<String> value) {
    _micorchipAPP = value;
  }

  void addToMicorchipAPP(String value) {
    micorchipAPP.add(value);
  }

  void removeFromMicorchipAPP(String value) {
    micorchipAPP.remove(value);
  }

  void removeAtIndexFromMicorchipAPP(int index) {
    micorchipAPP.removeAt(index);
  }

  void updateMicorchipAPPAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    micorchipAPP[index] = updateFn(_micorchipAPP[index]);
  }

  void insertAtIndexInMicorchipAPP(int index, String value) {
    micorchipAPP.insert(index, value);
  }

  List<String> _photoDogsOwner = [];
  List<String> get photoDogsOwner => _photoDogsOwner;
  set photoDogsOwner(List<String> value) {
    _photoDogsOwner = value;
  }

  void addToPhotoDogsOwner(String value) {
    photoDogsOwner.add(value);
  }

  void removeFromPhotoDogsOwner(String value) {
    photoDogsOwner.remove(value);
  }

  void removeAtIndexFromPhotoDogsOwner(int index) {
    photoDogsOwner.removeAt(index);
  }

  void updatePhotoDogsOwnerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    photoDogsOwner[index] = updateFn(_photoDogsOwner[index]);
  }

  void insertAtIndexInPhotoDogsOwner(int index, String value) {
    photoDogsOwner.insert(index, value);
  }

  List<String> _pedigreeAPP = [];
  List<String> get pedigreeAPP => _pedigreeAPP;
  set pedigreeAPP(List<String> value) {
    _pedigreeAPP = value;
  }

  void addToPedigreeAPP(String value) {
    pedigreeAPP.add(value);
  }

  void removeFromPedigreeAPP(String value) {
    pedigreeAPP.remove(value);
  }

  void removeAtIndexFromPedigreeAPP(int index) {
    pedigreeAPP.removeAt(index);
  }

  void updatePedigreeAPPAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pedigreeAPP[index] = updateFn(_pedigreeAPP[index]);
  }

  void insertAtIndexInPedigreeAPP(int index, String value) {
    pedigreeAPP.insert(index, value);
  }

  LatLng? _geoLoc;
  LatLng? get geoLoc => _geoLoc;
  set geoLoc(LatLng? value) {
    _geoLoc = value;
  }
}
