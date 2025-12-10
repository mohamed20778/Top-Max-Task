import 'package:top_max_task/features/saved_items/data/models/saved_items_response_model.dart';

abstract class SavedItemsRepo {
  Future<SavedItemsResponseModel> getSavedItems(String type);
}

