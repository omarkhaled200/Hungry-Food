part of 'get_side_option_cubit.dart';

sealed class GetSideOptionState extends Equatable {
  const GetSideOptionState();

  @override
  List<Object> get props => [];
}

final class GetSideOptionInitial extends GetSideOptionState {}

final class GetSideOptionLoading extends GetSideOptionState {}

final class GetSideOptionFailure extends GetSideOptionState {
  final String errmessage;

  GetSideOptionFailure({required this.errmessage});
}

final class GetSideOptionSuccess extends GetSideOptionState {
  final List<SideOptionModel> product;

  GetSideOptionSuccess({required this.product});
}
