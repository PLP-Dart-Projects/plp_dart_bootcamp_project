import 'package:flutter/material.dart';

class CreateGroupPage extends StatefulWidget {
  const CreateGroupPage({super.key});

  @override
  _CreateGroupPageState createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                width: size.height,
                child: Scaffold(
                  appBar: AppBar(
                    title: const Text('Create Group'),
                  ),
                  drawer: Drawer(
                    backgroundColor: Colors.white,
                    child: ListView(padding: EdgeInsets.zero, children: [
                      const UserAccountsDrawerHeader(
                        accountName: Text(
                          "xEmma Stone",
                          style: TextStyle(color: Colors.black),
                        ),
                        accountEmail: Text("user@mail.com",
                            style: TextStyle(color: Colors.black)),
                        currentAccountPicture: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              "https://randomuser.me/api/portraits/women/74.jpg"),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.group),
                        title: const Text("My Groups"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.new_label_outlined),
                        title: const Text("Create Group"),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.group_add),
                        title: Text("Join Group"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text("Savings"),
                        onTap: () {},
                      )
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
