part of 'get_all_products_cubit.dart';

sealed class GetAllProductsState extends Equatable {
  const GetAllProductsState();

  @override
  List<Object> get props => [];
}

final class GetAllProductsInitial extends GetAllProductsState {}

final class GetAllProductsLoading extends GetAllProductsState {}

final class GetAllProductsFailure extends GetAllProductsState {
  final String errmessage;

  GetAllProductsFailure({required this.errmessage});
}

final class GetAllProductsSuccess extends GetAllProductsState {
  final List<Data> product;

  GetAllProductsSuccess({required this.product});
}
