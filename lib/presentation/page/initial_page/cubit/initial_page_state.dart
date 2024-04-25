import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_test/domain/countries/models/country.dart';

part 'initial_page_state.freezed.dart';

@freezed
class InitialPageState with _$InitialPageState {
  const factory InitialPageState.loaded(List<Country> countries) = InitialPageStateLoaded;

  const factory InitialPageState.loading() = InitialPageStateLoading;
  const factory InitialPageState.idle() = InitialPageStateIdle;
}
