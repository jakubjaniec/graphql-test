import 'package:graphql_test/data/countries/data_source/countries_api_data_source.dart';
import 'package:graphql_test/data/countries/graphql/__generated__/countries.data.gql.dart';
import 'package:graphql_test/data/countries/graphql/countries_mapper_extension.dart';
import 'package:graphql_test/domain/countries/models/country.dart';
import 'package:graphql_test/domain/countries/service/countries_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CountriesService)
class CountriesServiceImpl implements CountriesService {
  final CountriesApiDataSource apiDataSource;

  const CountriesServiceImpl(this.apiDataSource);

  @override
  Future<List<Country>> getCountries() async {
    final GGetCountriesData result = await apiDataSource.getCountries();
    return result.toDomain();
  }
}
