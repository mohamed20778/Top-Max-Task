import 'package:top_max_task/features/save_job/data/models/save_job_response_model.dart';

sealed class SaveJobState {}

final class SaveJobInitial extends SaveJobState {}

final class SaveJobLoading extends SaveJobState {
  final int jobId;
  SaveJobLoading(this.jobId);
}

final class SaveJobSuccess extends SaveJobState {
  final int jobId;
  final SaveJobResponseModel data;
  SaveJobSuccess({required this.jobId, required this.data});
}

final class SaveJobFailed extends SaveJobState {
  final int jobId;
  final String message;
  SaveJobFailed({required this.jobId, required this.message});
}

