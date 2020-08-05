import 'package:flutter/material.dart';

// 知识专题
class KnowledgeSubject extends StatefulWidget {
  @override
  
  _KnowledgeSubjectState createState() => _KnowledgeSubjectState();

}


class _KnowledgeSubjectState extends State<KnowledgeSubject> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          child: getSubjectItemView(),
          onTap: () {
            print("点击了知识专题组件1");
          },
        ),
        InkWell(
          child: getSubjectItemView(),
          onTap: () {
            print("点击了知识专题组件2");
          },
        )
      ],
    );
  }


  getSubjectItemView() {
    return Container(
      color: Color(0xFFF6F6F6),
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
      width: double.infinity,
      child: Card(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      "若基因编辑出事故，科学及婴儿谁该被判死刑",
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xFF252831),
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Align(
                    widthFactor: 1,
                    heightFactor: 1,
                    alignment: Alignment.topRight,
                    child: Image.asset("images/right_arrow.png", width: 12, height: 12,),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 20),
                child: Text(
                  "谁动了上帝的原创",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xCC252831),
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  )
                ), 
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset("images/banner_1.png", width: 32, height: 24,fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    SizedBox(width: 8,),
                    Expanded( 
                      flex: 1,
                      child: 
                      Text(
                        "来自《陈桐的xxx课》",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xCC252831),
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        )
                      ), 
                    ),
                  ],
                ),
             
            ],
          ),
          
        ),
  
      ),
      
    );
  }

}