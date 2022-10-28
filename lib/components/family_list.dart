import 'package:flutter/material.dart';
import 'package:innovative_task/animation/slide_left.dart';
import 'package:innovative_task/models/family.dart';
import 'package:innovative_task/pages/page_two.dart';

class FamilyList extends StatelessWidget {

  final Family members;

  const FamilyList({
    required this.members,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 4),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        leading: CircleAvatar(backgroundImage: NetworkImage(members.image.toString())),
        title: Text(members.name ?? 'No Name'),
        subtitle: Text(members.relationship ?? 'Not Related'),
        onTap: () {
          Navigator.push(
              context, SlideLeft(page: PageTwo(information: members))
          );
        },
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

