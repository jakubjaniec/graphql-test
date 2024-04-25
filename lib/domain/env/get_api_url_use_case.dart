import 'package:graphql_test/injectable/staging_environment.dart';
import 'package:injectable/injectable.dart';

const String _devApiUrl = 'https://your-dev-backend-backend.com';
const String _stagingApiUrl = 'https://your-staging-backend.com';
const String _prodApiUrl = 'https://your-prod-backend.com';

abstract class GetApiUrlUseCase {
  String getApiUrl();
}

@dev
@Injectable(as: GetApiUrlUseCase)
class DevGetApiUrlUseCase implements GetApiUrlUseCase {
  @override
  String getApiUrl() => _devApiUrl;
}

@staging
@Injectable(as: GetApiUrlUseCase)
class StagingGetApiUrlUseCase implements GetApiUrlUseCase {
  @override
  String getApiUrl() => _stagingApiUrl;
}

@prod
@Injectable(as: GetApiUrlUseCase)
class ProdGetApiUrlUseCase implements GetApiUrlUseCase {
  @override
  String getApiUrl() => _prodApiUrl;
}
