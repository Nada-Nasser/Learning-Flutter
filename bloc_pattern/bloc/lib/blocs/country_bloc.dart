import '../models/country_response.dart';
import 'package:rxdart/rxdart.dart';
import '../resources/repository.dart';

class CountryBloc {
  final _repository = Repository();

  final _countriesFetcher = PublishSubject<CountryResponse>();

  Stream<CountryResponse> get allCountries => _countriesFetcher.stream;

  fetchCountries() async {
    CountryResponse itemModel = await _repository.fetchCountries();
    _countriesFetcher.sink.add(itemModel);
  }

  dispose() {
    _countriesFetcher.close();
  }
}

final bloc = CountryBloc();