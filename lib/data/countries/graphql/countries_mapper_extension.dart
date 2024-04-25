import 'package:graphql_test/data/countries/graphql/__generated__/countries.data.gql.dart';
import 'package:graphql_test/domain/countries/models/country.dart';

extension CountriesMapper on GGetCountriesData {
  List<Country> toDomain() {
    return countries
        .map((e) => Country(
              name: e.name,
              native: e.native,
              capital: e.capital,
            ))
        .toList(growable: false);
  }
}
