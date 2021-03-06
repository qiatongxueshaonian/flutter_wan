import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_wan/bean/project/project_detail_bean.dart';

class ProjectTabItemState implements Cloneable<ProjectTabItemState> {
  ProjectDetailDataData itemDetail;

  ProjectTabItemState({this.itemDetail});

  @override
  ProjectTabItemState clone() {
    return ProjectTabItemState()
        ..itemDetail = itemDetail;
  }
}

ProjectTabItemState initState(Map<String, dynamic> args) {
  return ProjectTabItemState();
}
