import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled5/components/states.dart';

class MessengerScreens extends StatelessWidget {
  const MessengerScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("image/me.jpg"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chat",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 20,
            child: Icon(
              Icons.camera,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 20,
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.blue,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 80,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, value) => states(),
                  separatorBuilder: (context, value) => const SizedBox(
                        width: 10,
                      ),
                  itemCount: 10),
            ),
            const Divider(
              color: Colors.black12,
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, value) => account(),
                    separatorBuilder: (context, value ) =>             const Divider(
                      color: Colors.black12,
                    ),

                    itemCount: 20))
          ],
        ),
      ),
    );
  }
}
