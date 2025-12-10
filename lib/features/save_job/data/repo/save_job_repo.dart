import 'package:top_max_task/features/save_job/data/models/save_job_response_model.dart';

abstract class SaveJobRepo {
  Future<SaveJobResponseModel> toggleSave({required int jobId});
}

