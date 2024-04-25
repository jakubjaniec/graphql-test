import 'package:ferry/ferry.dart';
import 'package:graphql_test/data/countries/graphql/__generated__/countries.data.gql.dart';
import 'package:graphql_test/data/countries/graphql/__generated__/countries.req.gql.dart';
import 'package:injectable/injectable.dart';

abstract class CountriesApiDataSource {
  Future<GGetCountriesData> getCountries();
}

@LazySingleton(as: CountriesApiDataSource)
class CountriesApiDataSourceImpl implements CountriesApiDataSource {
  final Client _client;

  const CountriesApiDataSourceImpl(this._client);

  @override
  Future<GGetCountriesData> getCountries() async {
    final request = GGetCountriesReq(
      (b) => b..fetchPolicy = FetchPolicy.NetworkOnly,
    );
    final response = await _client.request(request).first;
    if (response.data == null) {
      throw Exception('No data');
    }

    return response.data!;
  }
}
