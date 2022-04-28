import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  final int projectYear;
  final String projectDescription;
  final String projectImage;

  const ProjectCard(
      {required this.projectName,
      required this.projectYear,
      required this.projectDescription,
      required this.projectImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(5, 10),
                blurRadius: 15)
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "$projectName",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                child: Text(
                  "$projectYear",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "$projectImage",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$projectDescription",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
