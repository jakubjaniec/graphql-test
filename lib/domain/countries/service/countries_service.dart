import 'package:graphql_test/domain/countries/models/country.dart';

abstract class CountriesService {
  Future<List<Country>> getCountries();
}
