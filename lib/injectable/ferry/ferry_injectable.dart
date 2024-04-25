import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:graphql_test/injectable/staging_environment.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FerryModule {
  @lazySingleton
  @dev
  @prod
  @staging
  Client get ferry => Client(link: HttpLink('https://countries.trevorblades.com/'));
}
