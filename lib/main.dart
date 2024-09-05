import 'package:flutter/material.dart';

void main() {
  runApp(LandingView());
}

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title:  Text("KFC"),
                bottom: TabBar(tabs: [
                  Tab(
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.paid,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                      icon: Icon(
                        Icons.mail_sharp,
                        color: Colors.black,
                      )),
                ]),
              ),
              body: TabBarView(children: [
                Center(
                  child: Text("© iSAD"),
                ),
                Center(
                  child: Text("© iSAD2"),
                ),
                Center(
                  child: Text("© iSAD3"),
                )
              ]),
            ))
    );
  }
}
