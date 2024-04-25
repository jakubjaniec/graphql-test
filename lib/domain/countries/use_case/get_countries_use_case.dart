import 'package:graphql_test/domain/countries/models/country.dart';
import 'package:graphql_test/domain/countries/service/countries_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCountriesUseCase {
  final CountriesService _service;

  const GetCountriesUseCase(this._service);

  Future<List<Country>> call() => _service.getCountries();
}
