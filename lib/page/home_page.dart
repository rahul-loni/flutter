import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colab/models/catalog.dart';
import 'package:flutter_colab/utils/routes.dart';
import 'package:flutter_colab/widgets/drawer.dart';
import 'package:flutter_colab/widgets/item_widget.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App",style: TextStyle(
      ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount:dummyList.length,
          itemBuilder:(context,index){
            return ItemWidget(item:dummyList[index],);
          } ,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

