//import 'dart:html';

import 'package:bsk_flutter_1/model/catalog.dart';
import 'package:bsk_flutter_1/widgets/drawer.dart';
import 'package:bsk_flutter_1/widgets/item_wedget.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bsk_flutter_1/model/catalog.dart';
//import 'package:form_field_validator/form_field_validator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> item = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    //print(catalogJson);
    final decoddedData = jsonDecode(catalogJson);

    final productData = decoddedData["products"];
    item =
        List.from(productData).map<Item>((item) => Item.frommap(item)).toList();
    setState(() {});
  }

  final mostak = GlobalKey<FormState>();
  suraj(BuildContext context) {
    //Navigator.pushNamed(context, "");
    if (mostak.currentState!.validate()) ;
  }

  @override
  Widget build(BuildContext context) {
    //print(CatalogModel.items.length);
    return Scaffold(
      drawer: Mydrawer(),
      //backgroundColor: Colors.black,
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.black),
        // backgroundColor:Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Drawer",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: // )
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16, crossAxisSpacing: 16),

                itemBuilder: (context, index) {
                  final more = item[index];
                 return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAlias,
                   child: GridTile(
                      child: Image.network(more.image), 
                      header: Container(child: Text(more.name),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                      ),
                      footer: Text(more.price.toString()),
                    ),
                 );
                },
                itemCount: item.length,
                
              )
              // ListView.builder(
              //   itemCount: item.length,
              //   itemBuilder: (context, index) {
              //     return ItemWidget(
              //       item: item[index],
              //     );
              //   },
              // ),
              ),
    );
    //  FutureBuilder(
    //   future: DefaultAssetBundle.of(context)
    //       .loadString("assets/files/catalog.json"),
    //   builder: (context, snapShot) {
    //     var mydata = json.decode(snapShot.data.toString());
    //     if(mydata== null){
    //         return Center(
    //         child: Text(
    //      "Loding",
    //       style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
    //     ));
    //     }
    //     else{
    //       return Center(
    //         child: Text(
    //       mydata["products"][7]["image"],
    //       style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
    //     ));

    //     }

    //   },

    // Center(
    //   child: Form(
    //     key: mostak,
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(20.0),
    //           child: TextFormField(
    //               validator: ((value) {
    //                 if (value!.isEmpty) {
    //                   return "Enter Email";
    //                 }
    //               }),
    //               //validator:
    //               //RequiredValidator(errorText: "this fild is requre"),
    //               decoration: InputDecoration(
    //                   labelText: "Email",
    //                   hintText: "Enter Email",
    //                   border: OutlineInputBorder(),
    //                   fillColor: Colors.red,
    //                   focusColor: Colors.red)),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 00),
    //           child: TextFormField(
    //             validator: ((Value) {
    //               if (Value!.isEmpty) {
    //                 return "Enter Password Please";
    //               }
    //             }),
    //             //validator: RequiredValidator(errorText: "this fild is requre"),
    //             decoration: InputDecoration(
    //                 labelText: "Password",
    //                 hintText: "Password",
    //                 border: OutlineInputBorder(),
    //                 labelStyle: TextStyle(fontFamily: "Times New Roman")),
    //           ),
    //         ),
    //         SizedBox(
    //           height: 35.0,
    //         ),
    //         InkWell(
    //           onTap: () {},
    //           child: Container(
    //             height: 40,
    //             width: 110,
    //             //color: Colors.purpleAccent,
    //             child: Text("Sign"),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: Colors.purpleAccent,
    //             ),
    //             alignment: Alignment.center,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // ),
    //drawer: Drawer(),
    //  SliverList(
    // delegate: SliverChildBuilderDelegate(
    //   (BuildContext context, int index) {
    //      return ListTile(
    //       title: Text('Some Data'),
    //      );
    //    },
    //    childCount: 10,
    // ))
  }
}
