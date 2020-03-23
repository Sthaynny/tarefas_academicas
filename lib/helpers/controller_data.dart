import 'package:mobx/mobx.dart';
part 'controller_data.g.dart';

class DataController = _DataControllerBase with _$DataController;

abstract class _DataControllerBase with Store {
  @observable
  String newdata; 

  @observable
  String file;

  @action
  void setdata(DateTime data){
    newdata = "${data.day}/${data.month < 10 ? "0" + data.month.toString() : data.month}/${data.year}";
  }
  
  @action
  void setnamefile(_fileName){
    file = _fileName;
  }
  
  
}