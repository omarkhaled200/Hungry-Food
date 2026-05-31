import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:hungry_food/Feature/Home%20View/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_all_category_model/datum.dart';

part 'get_all_category_state.dart';

class GetAllCategoryCubit extends Cubit<GetAllCategoryState> {
  GetAllCategoryCubit(this.homeRepoImpl) : super(GetAllCategoryInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> getallcategory() async {
    emit(GetAllCategoryLoading());
    var result = await homeRepoImpl.getcategorys();
    result.fold(
      (Failure) {
        emit(GetAllCategoryFailure(errmessage: Failure.errmessage));
      },
      (cate) {
        emit(GetAllCategorySuccess(cate: cate));
      },
    );
  }
}
