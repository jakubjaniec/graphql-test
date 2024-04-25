import 'package:graphql_test/example/domain/example_feature/model/example_model.dart';

abstract class ExampleService {
  Future<ExampleModel> getExampleData();
}
