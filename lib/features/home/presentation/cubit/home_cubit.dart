import 'package:bloc/bloc.dart';
import 'package:top_max_task/features/home/data/repo/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(HomeInitial());

  Future<void> loadHome() async {
    emit(HomeLoading());
    try {
      final data = await homeRepo.fetchHome();
      emit(HomeSuccess(data));
    } catch (e) {
      emit(HomeFailed(e.toString()));
    }
  }

  void updateFilter(String query) {
    final currentState = state;
    if (currentState is HomeSuccess) {
      emit(HomeSuccess(currentState.data, filterQuery: query));
    }
  }
}

