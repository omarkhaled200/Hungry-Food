import 'package:dartz/dartz.dart';
import 'package:hungry_food/Core/error/failure.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_all_category_model/datum.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/data.dart';
import 'package:hungry_food/Feature/Home%20View/data/models/get_product_by_id_model/get_product_by_id_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Datum>>> getcategorys();
  Future<Either<Failure, List<Data>>> getproducts();
  Future<Either<Failure, GetProductByIdModel>> getproductbyid({
    required int id,
  });
}
