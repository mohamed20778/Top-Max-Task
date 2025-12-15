import 'package:bloc/bloc.dart';
import 'package:top_max_task/features/home/data/models/home_response_model.dart';
import 'package:top_max_task/features/home/data/repo/home_repo.dart';
import 'package:top_max_task/features/home/presentation/widgets/filter_item.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit({required this.homeRepo}) : super(HomeInitial());

  Future<void> loadHome() async {
    emit(HomeLoading());
    try {
      final data = await homeRepo.fetchHome();
      final featuredJobs = data.data?.recentOpenings ?? [];

      emit(
        HomeSuccess(
          data: data,
          filteredOpeningRecent: featuredJobs,
          selectedFilter: FilterType.all,
        ),
      );
    } catch (e) {
      emit(HomeFailed(e.toString()));
    }
  }

  void filterrecentOpeningsJobs(FilterType type) {
    if (state is! HomeSuccess) return;

    final currentState = state as HomeSuccess;
    final allJobs = currentState.data.data?.recentOpenings ?? [];

    List<JobItemModel> filtered;

    switch (type) {
      case FilterType.fulltime:
        filtered =
            allJobs.where((e) => e.jobType == 'full-time').toList();
        break;

      case FilterType.partTime:
        filtered =
            allJobs.where((e) => e.jobType == 'part-time').toList();
        break;

      case FilterType.onsite:
        filtered = allJobs
            .where((e) => e.locationPriority == "onsite")
            .toList();
        break;

      case FilterType.hyprid:
        filtered = allJobs
            .where((e) => e.locationPriority == "hybrid")
            .toList();
        break;

      case FilterType.all:
      default:
        filtered = allJobs;
    }

    emit(
      HomeSuccess(
        data: currentState.data,
        filteredOpeningRecent: filtered,
        selectedFilter: type,
      ),
    );
  }
}
