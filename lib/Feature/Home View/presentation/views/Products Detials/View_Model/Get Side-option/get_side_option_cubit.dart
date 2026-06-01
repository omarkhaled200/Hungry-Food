import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hungry_food/Core/error/failure.dart';
import 'package:hungry_food/Feature/Home%20View/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/side_option_model/side_option_model.dart';

part 'get_side_option_state.dart';

class GetSideOptionCubit extends Cubit<GetSideOptionState> {
  GetSideOptionCubit(this.homeRepoImpl) : super(GetSideOptionInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> getSideOption() async {
    emit(GetSideOptionLoading());
    var result = await homeRepoImpl.getsideoption();
    result.fold(
      (Failure) {
        emit(GetSideOptionFailure(errmessage: Failure.errmessage));
      },
      (product) {
        emit(GetSideOptionSuccess(product: product));
      },
    );
  }
}
