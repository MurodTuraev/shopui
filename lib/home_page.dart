import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _itemImages = [
    'assets/images/images1.jpeg',
    'assets/images/images2.jpeg',
    'assets/images/images3.jpeg',
    'assets/images/images4.jpeg',
    'assets/images/images5.jpeg',
    'assets/images/images6.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('Apple Products', style: TextStyle(fontSize: 28),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange
              ),
              child: Center(
                child: Text('7', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(_itemImages[5]),
                  fit: BoxFit.cover,
                ),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.1),
                      ]
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Center(
                    child: Text('Lifestyle sale', style: TextStyle(fontSize: 36,  color: Colors.white),),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: TextButton(
                      onPressed: (){},
                      child: Text('Shop Now', style: TextStyle(color: Colors.grey, fontSize: 20),),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _itemImages.map((item) => funcList(item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget funcList(item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.favorite, color: Colors.deepOrange,size: 40,)
          ],
        ),
      ),
    );
  }
}
