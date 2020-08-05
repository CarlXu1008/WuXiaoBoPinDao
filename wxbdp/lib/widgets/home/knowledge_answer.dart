import 'package:flutter/material.dart';

class KnowledgeAnswer extends StatefulWidget {
  KnowledgeAnswer({Key key}) : super(key: key);

  @override
  _KnowledgeAnswerState createState() => _KnowledgeAnswerState();
}

class _KnowledgeAnswerState extends State<KnowledgeAnswer> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          child: getAnswerItemView(),
          onTap: () {
            print("点击了知识问答组件1");
          },
        ),
        InkWell(
          child: getAnswerItemView(),
          onTap: () {
            print("点击了知识问答组件2");
          },
        )
      ],
    );
    
  }

  getAnswerItemView() {
    return Container(
      color: Color(0xFFF6F6F6),
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
      width: double.infinity,
      child: Card(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
          child: Column(
            children: <Widget>[
              Text(
                "它才是未来十年，最值得关注的技术机会支持, 890尚旭业",
                maxLines: 2,
                style: TextStyle(
                  color: Color(0xFF252831),
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(width: double.infinity, height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset("images/banner_1.png", width: 36, height: 36,fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    ),
                    SizedBox(width: 6,),
                    Expanded( 
                      flex: 1,
                      child: Text(
                        "超7成人对自己的评价不够客观，往往高估实力, 忽视运气",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xCC252831),
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        )
                      ), 
                    ),
                    
                    Align(
                      widthFactor: 2,
                      heightFactor: 2,
                      alignment: Alignment.topRight,
                      child: Image.asset("images/right_arrow.png", width: 12, height: 12,),
                    )
                  ],
                ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "来自《我的财富计划》",
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xAA252831),
                        fontSize: 12,
                      )
                    ),
                    Text(
                      "• 1.2w人正在学习",
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xAA252831),
                        fontSize: 12,
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
          
        ),
  
      ),
      
    );
  }

}