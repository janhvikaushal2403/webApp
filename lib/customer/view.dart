
import 'package:flutter/material.dart';


import '../utils/appImage.dart';



class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:150),
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(250),
             child: AppBar(flexibleSpace: Container(
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage(AppImage.imagebg),
                fit: BoxFit.fill
                )),
             ),)),
          body: DefaultTabController(
            length: 4, 
            child: Column(
              children: [
                Material(
                  child: TabBar(
                    indicatorColor: Colors.pink,
                    tabs: [
                      Tab(child: Text("All Day Menu",
                      style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("Beverages",
                       style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("Desserts",
                       style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("Daisy's Dinners",
                       style: TextStyle(color: Colors.black),),),
                    ]),
                ),
                Expanded(
                  child: TabBarView(
                    children:[
                      ListView.separated(
                        separatorBuilder: (BuildContext context , int index)=> const Divider(), 
                        itemBuilder: (context,index){
                          return ListTile(title: Text("Food Item $index"),);
                        }, 
                       
                        itemCount: 20),
                        ListView.separated(
                        separatorBuilder: (BuildContext context , int index)=> const Divider(), 
                        itemBuilder: (context,index){
                          return ListTile(title: Text("Drinks $index"),);
                        }, 
                       
                        itemCount: 20),
                        ListView.separated(
                        separatorBuilder: (BuildContext context , int index)=> const Divider(), 
                        itemBuilder: (context,index){
                          return ListTile(title: Text("Dessert $index"),);
                        }, 
                       
                        itemCount: 20),
                        ListView.separated(
                        separatorBuilder: (BuildContext context , int index)=> const Divider(), 
                        itemBuilder: (context,index){
                          return ListTile(title: Text("Dinner $index"),);
                        }, 
                       
                        itemCount: 20)
                    ] ),
                )
              ],
            ),
            
              
              ),
      
      ),
    );
  }
}
