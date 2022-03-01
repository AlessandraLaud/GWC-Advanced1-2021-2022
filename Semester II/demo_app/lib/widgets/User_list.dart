import 'package:flutter/material.dart';
import 'package:demo_app/services/http_service.dart';
import 'package:demo_app/models/User.dart';

class UserList extends StatefulWidget {
  const UserList({ Key? key }) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  late Future<List<User>> users;

  @override
  void initState() {
    super.initState();
    users = HttpService.fetchUsers();
    // users = HttpService.fetchUsersWithApi(); // uncomment this line to fetch data from https://randomuser.me/ api
  }

  Widget createUserList(data) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        color: Colors.grey,
      ),
      padding: const EdgeInsets.all(2),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            title: Text('${data[index].firstName} ${data[index].lastName}'),
            leading: const Icon(Icons.account_circle, size: 40),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data[index].email),
                ],
              ),
            ),
          );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: users,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return createUserList(snapshot.data);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}