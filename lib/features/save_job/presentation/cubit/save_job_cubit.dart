import 'package:bloc/bloc.dart';
import 'package:top_max_task/features/save_job/data/repo/save_job_repo.dart';
import 'save_job_state.dart';

class SaveJobCubit extends Cubit<SaveJobState> {
  final SaveJobRepo saveJobRepo;
  SaveJobCubit({required this.saveJobRepo}) : super(SaveJobInitial());

  Future<void> toggleSave(int jobId) async {
    emit(SaveJobLoading(jobId));
    try {
      final res = await saveJobRepo.toggleSave(jobId: jobId);
      emit(SaveJobSuccess(jobId: jobId, data: res));
    } catch (e) {
      emit(SaveJobFailed(jobId: jobId, message: e.toString()));
    }
  }
}

