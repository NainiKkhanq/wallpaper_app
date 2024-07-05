import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Utils/colors.dart';
import '../widgets/ringtoneButtons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final imageList=[
    'https://res.cloudinary.com/dghloo9lv/image/upload/v1718715658/nature-3082832_640_aizqnl.jpg',
    'https://res.cloudinary.com/dghloo9lv/image/upload/v1718715947/1339621_vjsfmm.png',
    'https://res.cloudinary.com/dghloo9lv/image/upload/v1718715983/3d-33q6a18khxgta4ll_u78x6o.jpg',
    'https://res.cloudinary.com/dghloo9lv/image/upload/v1718716049/Dark-Wallpapers_uuprg7.webp',
  ];
  final recentImageList=[
    'https://cdn.pixabay.com/photo/2018/09/09/02/32/canada-place-3663822_640.jpg',
    'https://images.unsplash.com/photo-1607170523098-e7fd1e82f20a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
    'https://images.pexels.com/photos/1750754/pexels-photo-1750754.jpeg?cs=srgb&dl=pexels-vincent-albos-322257-1750754.jpg&fm=jpg',
    'https://www.planetware.com/wpimages/2019/11/canada-in-pictures-beautiful-places-to-photograph-churchill-manitoba-polar-bears.jpg',
  ];
  int active_Index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
          
                    Container(
                      height: 140,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                         color: menuColor
                      ),
                      child:  Container(
                        margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.menu,color: Colors.white,size: 28,),
                            Text("WallPapers",style: TextStyle(color: Colors.white,fontSize: 24,),),
                            Icon(Icons.search,color: Colors.white,size: 28,)
          
                          ],
                        ),
                      ),
                    ),
          
          
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        margin: EdgeInsets.only(top: 80),
                        child:CarouselSlider.builder(
          
                          itemCount: imageList.length,
          
                          options: CarouselOptions(
                            onPageChanged: (index,reason){
          
                                setState(() {
                                  // These index value is our List Index
                                  active_Index = index;
                                });
                            },
                              autoPlay: true,
                              // PageSnapping will make the unused image small and selected image to large
                              pageSnapping: true,
          
          
                              enableInfiniteScroll: false,
                              height: 180,viewportFraction: 1),
                          itemBuilder: (context, index, realIndex) {
                            // final imageURl = imageList[index];
                            return showingImageinCarosuel(imageList[index], index);
                          },
                        )
                      ),
                     const  SizedBox(height: 12,),
                      indicators(),
                    ],
                  ),
          
                ],
              ),
             //
              Container(
                margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Daily Ringtones",style: TextStyle(fontSize: 18,),),
                     Row(children: [Text("See All",style: TextStyle(fontSize: 18 ,color: menuColor)),
                       SizedBox(width: 1,),
                       Icon(Icons.navigate_next,color: menuColor,)],)
          
                  ],
                ),
              ),
          
          
          
          
              SingleChildScrollView(
                child: Flexible(
                  flex: 1,
                  child: SizedBox(
                      height: 130,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ringtoneButton(
                              buttonColor: play1ButtonColor,
                              title: "PHI NEX ~ Can't Break Heart",
                          
                            ),
                            ringtoneButton(
                              buttonColor: play2ButtonColor,
                              title: "PBX1 ~ Gangster Vibes",
                          
                            ),
                            ringtoneButton(
                              buttonColor: play3ButtonColor,
                              title: "Quite Life ~ No more chance",
                          
                            ),
                            ringtoneButton(
                              buttonColor: play4ButtonColor,
                              title: "Rote ~ I am Unbreakable ",
                          
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
          
              Container(
                margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Wallpaper of the day",style: TextStyle(fontSize: 18,),),
                    Row(children: [Text("See All",style: TextStyle(fontSize: 18 ,color: menuColor)),
                      SizedBox(width: 1,),
                      Icon(Icons.navigate_next,color: menuColor,)],)
          
                  ],
                ),
              ),
          
          
              SizedBox(
                  height: 130,
                  child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
          
                            borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageList[index],)
                          )
          
                        ),
                        );
                  },)
          
              ),
              Container(
                margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recently Uploaded",style: TextStyle(fontSize: 18,),),
                    Row(children: [Text("See All",style: TextStyle(fontSize: 18 ,color: menuColor)),
                      SizedBox(width: 1,),
                      Icon(Icons.navigate_next,color: menuColor,)],)
          
                  ],
                ),
              ),


              SizedBox(
                  height: 300,
                  child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 20,bottom: 10),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(recentImageList[index],)
                            )

                        ),
                      );
                    },)

              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget showingImageinCarosuel(String URLImage, int index){
     return  Container(
        width: double.infinity,
       margin: EdgeInsets.symmetric(horizontal: 20),
       decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              fit: BoxFit.cover,
           image: NetworkImage(URLImage)
       )
       ),

     );

  }
  Widget indicators(){
    // Check Smooth Indicator pub.dev file for more info
   return AnimatedSmoothIndicator(
     curve:  Curves.decelerate,
      effect: const ExpandingDotsEffect(
        dotHeight: 10,
        dotColor: menuColor,
        paintStyle: PaintingStyle.fill,
        dotWidth: 10
      ),
      activeIndex: active_Index,
      count: imageList.length,

    );
  }
}

// Container(
// alignment: Alignment.center,
// margin: EdgeInsets.only(top: 80,left: 50,right: 50),
// height: 120,
// width: double.infinity,
// child: Column(children: [],),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// shape: BoxShape.rectangle,
// image: DecorationImage(
//
// fit: BoxFit.cover,
//
// image: NetworkImage("https://res.cloudinary.com/dghloo9lv/image/upload/v1718708107/HD-wallpaper-time-for-an-evening-walk-sea-landscape-boat-splendor-evening-nature-clouds_okmnte.jpg"))
// ),
// )
