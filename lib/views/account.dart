import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
 
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  List<User> users = [
     User(name: "Hari Prasad Chaudhary", address: "",st:Icon(Icons.abc)),
     User(name:"David Mars", address: "Bangalore, India",st:Icon(Icons.abc)),
     User(name:"Aurn Thapa", address:"Canada",st:Icon(Icons.abc)),
     User(name: "John Bal", address:"United States of America",st:Icon(Icons.abc)),
       User(name: "John Bal", address:"United States of America",st:Icon(Icons.abc)),
         User(name: "John Bal", address:"United States of America",st:Icon(Icons.abc)),
           User(name: "John Bal", address:"United States of America",st:Icon(Icons.abc)), 
            User(name: "John Bal", address:"United States of America",st:Icon(Icons.abc))

  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        title:ListTile(
          leading: Icon(Icons.person,size: 30,),
          
          title: Text("Sandy"),
        subtitle: Text("ert@gmail.com"),),
        actions: [Icon(Icons.logout_outlined)],
        
      ),
      body:  Column(
                children: users.map((userone){
                    return Container(
                        child: ListTile(
                          leading: Icon(Icons.abc),
                            title: Text(userone.name),
                            subtitle: Text("Address: " + userone.address),
                            trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        color: Colors.green[100],
                    );
                }).toList(),
                
          )
    );
   
  }
}

class User{
   String name, address;
   Icon st;
   User({required this.name, required this.address,required this.st});
}