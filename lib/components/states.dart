import 'package:flutter/material.dart';

Widget states() =>  const SizedBox(
  width: 65,
  child:  Column(
    children: [
      Stack(alignment: AlignmentDirectional.bottomEnd, children: [
        CircleAvatar(
          backgroundImage: AssetImage("image/me.jpg"),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            bottom: 2,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 5,
            ),
          ),
        )
      ]),
      Text(
        "Mohamed Taha Badawy ",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      )
    ],
  ),
) ;

Widget account() => const Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Stack(alignment: AlignmentDirectional.bottomEnd, children: [
      CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("image/me.jpg"),
      ),
      Padding(
        padding: EdgeInsetsDirectional.only(
          bottom: 2,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 6,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 5,
          ),
        ),
      ),
    ]),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Mohamed Taha Hassen Badawy",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Text(
              "Hallo my name is Mohamed ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 5,
            ),
            SizedBox(
              width: 20,
            ),
            Text("3:41 PM")
          ],
        )
      ],
    )
  ],
) ;
