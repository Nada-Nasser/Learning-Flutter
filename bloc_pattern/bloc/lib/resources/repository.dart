import 'dart:async';
import '../models/country_response.dart';
import 'country_api_provider.dart';

class Repository {
  final moviesApiProvider = CountryApiProvider();

  Future<CountryResponse> fetchCountries() =>
      moviesApiProvider.fetchCountryList();
}