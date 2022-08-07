import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:homeScreen(),
    )
  );
}

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/alan1.png'),
                      )
                    ),

                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3),
                          ]
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Alan Walker",style: TextStyle(
                              color: Colors.white,
                              fontSize:40,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("356 Videos",style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),),
                                SizedBox(width: 50,),
                                Text("236M Subscribers",style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                 [
                   Padding(
                     padding: EdgeInsets.all(20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Alan Olav Walker (born 24 August 1997) is a British-born Norwegian DJ, YouTuber and record producer primarily known for the critically acclaimed single 'Faded'' (2015), which was certified platinum in 14 countries. He has also made several songs including 'Sing Me to Sleep', 'Alone', 'Darkside', and 'On My Way', all of which attracted millions of views on YouTube.",
                         style: TextStyle(
                           color: Colors.grey,
                           height: 1.4,
                         ),),
                         SizedBox(height: 40,),
                         Text("Born",style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),),
                         SizedBox(height: 10,),
                         Text("August, 27th 1997,Norwey",style: TextStyle(
                           color: Colors.grey,

                         ),),
                         SizedBox(height: 10,),
                         Text("Origin",style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),),
                         SizedBox(height: 10,),
                         Text("Bergen",style: TextStyle(
                           color: Colors.grey,

                         ),),
                         SizedBox(height: 10,),
                         Text("Videos",style: TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),),
                         SizedBox(height: 10,),
                         Container(
                           height: 200,
                           child: ListView(
                             scrollDirection: Axis.horizontal,
                             children: [

                               makeVideo(image: 'assets/alan5.png'),
                               makeVideo(image: 'assets/alan6.jpg'),
                               makeVideo(image: 'assets/alan7.jpg'),
                             ],
                           ),
                         ),
                         SizedBox(
                           height: 120,
                         ),
                       ],
                     ),
                   )
                 ]
                ),
              )
            ],
          ),
          Positioned.fill(
            bottom: 30,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Align(
                    child: Text("Follow",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget makeVideo({image}){
    return AspectRatio(
        aspectRatio: 1.5/1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.3),
              ]
            )
          ),
          child: Align(
            child: Icon(Icons.play_arrow,color: Colors.white,size: 50,),
          ),
        ),
      ),
    );
  }
}
