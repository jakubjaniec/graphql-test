import 'package:graphql_test/domain/countries/use_case/get_countries_use_case.dart';
import 'package:graphql_test/presentation/page/initial_page/cubit/initial_page_state.dart';
import 'package:graphql_test/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class InitialPageCubit extends SafetyCubit<InitialPageState> {
  final GetCountriesUseCase _getCountriesUseCase;

  InitialPageCubit(this._getCountriesUseCase) : super(const InitialPageState.idle());

  Future<void> load() async {
    emit(const InitialPageState.loading());
    final countries = await _getCountriesUseCase();
    emit(InitialPageState.loaded(countries));
  }

  void emitIdle() {
    emit(const InitialPageState.idle());
  }
}
