import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:hungry_food/Feature/Home%20View/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/topping_model/topping_model.dart';

part 'get_topping_state.dart';

class GetToppingCubit extends Cubit<GetToppingState> {
  GetToppingCubit(this.homeRepoImpl) : super(GetToppingInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> gettopping() async {
    emit(GetToppingLoading());
    var result = await homeRepoImpl.gettopping();
    result.fold(
      (Failure) {
        emit(GetToppingFailure(errmessage: Failure.errmessage));
      },
      (product) {
        emit(GetToppingSuccess(product: product));
      },
    );
  }
}
