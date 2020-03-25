import 'package:mobx/mobx.dart';
part 'tarefas.g.dart';

class Tarefa = _TarefaBase with _$Tarefa;

abstract class _TarefaBase with Store {
  @observable
  String titulo;

  @observable
  String descricao;

  @observable
  String dataEntrega;

  @observable
  String file;

  @observable
  String arquivoPath;

  @observable
  bool status;

  bool userEdited;

  @action
  setTitulo(String value) => titulo = value;

  @action
  setDescricao(String value) => descricao = value;

  @action
  setData(DateTime value) => dataEntrega =
      "${value.day}/${value.month < 10 ? "0" + value.month.toString() : value.month}/${value.year}";

  @action
  setPath(String value) => arquivoPath = value;

  @action
  setStatus(bool value) => status = value;

  @action
  fromMap(){
    Map<String, dynamic> newTarefa = Map();
    newTarefa["titulo"] = this.titulo;
    newTarefa["descricao"] = this.descricao;
    newTarefa["dataEntrega"] = this.dataEntrega;
    newTarefa["ok"] = this.status;
    return newTarefa;
  }

  Tarefa() {
    titulo = '';
    descricao = '';
    dataEntrega = '';
    arquivoPath = '';
    userEdited=status = false;
    file = '';
  }
}
