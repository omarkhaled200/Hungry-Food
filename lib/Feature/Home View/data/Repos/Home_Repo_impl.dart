import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hungry_food/Core/error/failure.dart';
import 'package:hungry_food/Core/utils/api_class.dart';
import 'package:hungry_food/Feature/Home%20View/data/Repos/Home_Repo.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_all_category_model/datum.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_all_product_model/get_all_product_model..dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/get_product_by_id_model.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiClass apiClass;

  HomeRepoImpl(this.apiClass);
  @override
  Future<Either<Failure, List<Datum>>> getcategorys() async {
    try {
      var data = await apiClass.get(endpoint: 'categories');

      List<Datum> cate = [];
      for (var item in data['data']) {
        cate.add(Datum.fromJson(item));
      }

      return right(cate);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetProductByIdModel>> getproductbyid({
    required int id,
  }) async {
    try {
      var data = await apiClass.get(endpoint: 'products/$id');

      GetProductByIdModel product = GetProductByIdModel.fromJson(data['data']);

      return right(product);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Data>>> getproducts() async {
    try {
      var data = await apiClass.get(endpoint: 'products');
      print("the data is $data");
      List<Data> product = [];
      for (var item in data['data']) {
        print("the item is $item");
        product.add(Data.fromJson(item));
      }

      return right(product);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
