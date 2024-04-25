import 'package:injectable/injectable.dart';
import 'package:graphql_test/example/data/example_feature/model/example_model_dto.dart';
import 'package:graphql_test/example/domain/example_feature/model/example_model.dart';

@injectable
class ExampleModelDtoToExampleModelMapper {
  ExampleModel call(ExampleModelDto dto) => ExampleModel();
}