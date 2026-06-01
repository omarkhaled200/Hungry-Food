part of 'get_topping_cubit.dart';

sealed class GetToppingState extends Equatable {
  const GetToppingState();

  @override
  List<Object> get props => [];
}

final class GetToppingInitial extends GetToppingState {}

final class GetToppingLoading extends GetToppingState {}

final class GetToppingFailure extends GetToppingState {
  final String errmessage;

  GetToppingFailure({required this.errmessage});
}

final class GetToppingSuccess extends GetToppingState {
  final List<ToppingModel> product;

  GetToppingSuccess({required this.product});
}
