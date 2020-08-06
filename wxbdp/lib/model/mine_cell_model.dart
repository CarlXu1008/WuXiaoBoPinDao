
import 'package:wxbdp/widgets/mine/mine_cell.dart';

class MineCellModel {
  int id;
  String iconName;
  String title;
  String subTitle;
  bool isnew = false;

  MineCellModel(this.id, this.iconName, this.title, {this.subTitle, this.isnew});

}