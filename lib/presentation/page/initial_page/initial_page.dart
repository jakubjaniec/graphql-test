import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_test/presentation/page/initial_page/cubit/initial_page_cubit.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

class InitialPage extends HookWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<InitialPageCubit>();
    final state = useBlocBuilder(cubit);

    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
          onPressed: cubit.load,
          child: Text('load'),
        ),
        TextButton(
          onPressed: cubit.emitIdle,
          child: Text('idle'),
        ),
      ]),
      body: state.maybeWhen(
        loaded: (countries) => ListView(
          children: countries.map((e) => ListTile(title: Text(e.name))).toList(growable: false),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        orElse: SizedBox.shrink,
      ),
    );
  }
}
