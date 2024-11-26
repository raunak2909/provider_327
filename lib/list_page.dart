import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';



class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  @override
  Widget build(BuildContext context) {

    ///watch
    //var mData = Provider.of<ListProvider>(context).getData();
    var mData = context.watch<ListProvider>().getData();

    return Scaffold(
      appBar: AppBar(
        title: Text('ListPage'),
      ),
      /// get al list elements
      body: ListView.builder(
        itemCount: mData.length,
          itemBuilder: (_, index){
          return ListTile(
            title: Text(mData[index]["name"]),
            subtitle: Text(mData[index]["mobNo"]),
          );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        /// add map in list
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddNotePage(),));
      }, child: Icon(Icons.add),),
    );
  }
}

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          ///read
          //Provider.of<ListProvider>(context, listen: false).addData();
          context.read<ListProvider>().addData();
        }, child: Text('Add')),
      ),
    );
  }
}

