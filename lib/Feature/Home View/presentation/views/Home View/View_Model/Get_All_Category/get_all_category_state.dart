part of 'get_all_category_cubit.dart';

sealed class GetAllCategoryState extends Equatable {
  const GetAllCategoryState();

  @override
  List<Object> get props => [];
}

final class GetAllCategoryInitial extends GetAllCategoryState {}

final class GetAllCategoryLoading extends GetAllCategoryState {}

final class GetAllCategoryFailure extends GetAllCategoryState {
  final String errmessage;

  GetAllCategoryFailure({required this.errmessage});
}

final class GetAllCategorySuccess extends GetAllCategoryState {
  final List<Datum> cate;

  GetAllCategorySuccess({required this.cate});
}
