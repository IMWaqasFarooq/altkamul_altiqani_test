import 'package:dartz/dartz.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:hive/hive.dart';

import '../../../constants/app_constants.dart';
import '../../../di/injection.dart';
import '../../model/items_model.dart';
import '../../model/questions_model.dart';
import 'data_box.dart';



abstract class QuestionsLocalDataSource<T extends HiveObject> {

  Future<void> save(List<Items> newObject);

  Future<Either<String, QuestionsModel>>  getData(int page);
}




class QuestionsLocalDataSourceImpl implements QuestionsLocalDataSource<Items> {


  final DataBox dataBox;

  QuestionsLocalDataSourceImpl(this.dataBox);

  @override
  Future<Either<String, QuestionsModel>>  getData(int page) async {
    final box = await dataBox.box;


    if(page>1){
      return const Left(Errors.networkError);

    }else if(box.isEmpty){
      return const Left("No Data Found");
    } else{
      List<dynamic> list = box.get("0");


      if(list.isNotEmpty){
        QuestionsModel model = QuestionsModel(
          items: list.toList().cast(),
          hasMore: false,
          quotaMax: 0,
          quotaRemaining: 0,
        );
        return Right(model);
      }else{
        return const Left(Errors.somethingWrong);
      }
    }


  }

  @override
  Future<void> save(List<Items> data) async {
    final box = await dataBox.box;

    box.clear();
    box.put("0", data);
  }



}