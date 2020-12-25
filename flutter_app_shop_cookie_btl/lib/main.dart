import 'package:flutter/material.dart';
import 'package:flutterappshopcookiebtl/botttom_bar.dart';
import 'package:flutterappshopcookiebtl/cookie_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.green,
        elevation: 0.0,
        centerTitle: true,

        title: Text(' Cookie Shop',
          style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              color: Color(0xFF545D68)),
        ),


        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture:CircleAvatar(
                  backgroundImage: AssetImage('images/avatar.jpg'),
                  radius: 100,
                  child: Icon(
                      Icons.people
                  ),
                ),
                accountName: Text(
                  ' Cookie Shop',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                accountEmail: Text('Kính chào quý khách !',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                otherAccountsPictures: <Widget>[

                  Icon(
                    Icons.star,
                    color: Colors.yellow[200],
                  ),
                ],
                onDetailsPressed: () {},
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top :8.0),
                  children: <Widget>[
                    Column(children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Trang chủ'),
                        onTap :(){
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Giới thiệu'),
                        onTap :(){
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.image),
                        title: Text('Hình ảnh'),
                        onTap :(){
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text('Email phản hồi'),
                        onTap :(){
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text('Đánh giá ứng dụng'),
                        onTap :(){
                          Navigator.pop(context);
                        },

                      ),
                      ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('Đăng xuất'),
                          onTap :(){
                            Navigator.pop(context);
                          }
                      ),
                    ],)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Bánh Ngon',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [

                Tab(
                  child: Text('Bánh Quy',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Bánh Ngọt',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Bánh kem',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    CookiePage(),
                    CookiePage(),
                    CookiePage(),
                  ]
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
