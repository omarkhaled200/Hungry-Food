import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hungry_food/Feature/Home%20View/data/Repos/Home_Repo_impl.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';

part 'get_all_products_state.dart';

class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit(this.homeRepoImpl) : super(GetAllProductsInitial());
  final HomeRepoImpl homeRepoImpl;

  Future<void> getallproducts() async {
    emit(GetAllProductsLoading());
    var result = await homeRepoImpl.getproducts();
    result.fold(
      (Failure) {
        emit(GetAllProductsFailure(errmessage: Failure.errmessage));
      },
      (product) {
        emit(GetAllProductsSuccess(product: product));
      },
    );
  }
}
