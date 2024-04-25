import 'package:injectable/injectable.dart';
import 'package:graphql_test/example/domain/example_feature/model/example_model.dart';
import 'package:graphql_test/example/domain/example_feature/service/example_service.dart';

@injectable
class GetExampleFeatureDataUseCase {
  final ExampleService _exampleService;

  GetExampleFeatureDataUseCase(this._exampleService);

  Future<ExampleModel> call() => _exampleService.getExampleData();
}
