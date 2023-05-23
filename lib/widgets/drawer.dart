import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalogDrawerWidget extends StatefulWidget {
  const CatalogDrawerWidget({super.key});

  @override
  State<CatalogDrawerWidget> createState() => _CatalogDrawerWidgetState();
}

class _CatalogDrawerWidgetState extends State<CatalogDrawerWidget> {

  final userImageUrl="https://avatars.githubusercontent.com/u/76505347?v=4";
  @override
  Widget build(BuildContext context) {
    return     Drawer(
      child:   Container(
        color: Colors.deepPurple,
        child: ListView(
          children:   [
               DrawerHeader(
              padding:   EdgeInsets.zero,
              child:   UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail:const  Text("mohitk30@gmail.com"),
                accountName: const Text("Mohit kumar"),
                currentAccountPicture:  CircleAvatar(
                  backgroundImage: NetworkImage(userImageUrl),
                  )  
              ),
              ),
                
                const ListTile(
                  leading:   Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title:  Text("home",
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),

                const ListTile(
                  leading:   Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                  ),
                  title:  Text("profile",
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),

                const ListTile(
                  leading:   Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                  ),
                  title:  Text("mail me",
                  textScaleFactor: 1.4,
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
          
          ],
        ),
      ),
    );
  }
}