import 'package:flutter/cupertino.dart';
import 'package:graphql_test/example/presentation/page/example_page/widgets/example_cell.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => const ExampleCell(),
    );
  }
}
