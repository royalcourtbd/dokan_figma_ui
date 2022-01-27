import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  List images = [
    'assets/images/products2.png',
    'assets/images/products4.png',
    'assets/images/products3.png',
    'assets/images/products1.png',
    'assets/images/products4.png',
    'assets/images/products2.png',
  ];
  List productsName = [
    'Girls Stylish Dresses…',
    'Man Stylish Dresses…',
    'Man Stylish Dresses…',
    'Girls Stylish Dresses…',
    'Man Stylish Dresses…',
    'Girls Stylish Dresses…',
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 26,
            ),
          ),
        ],
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Products List',
          style: GoogleFonts.roboto(
            fontSize: 23,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xffF8F8F8),
      ),
      body: ListView(
        //padding: EdgeInsets.only(top: 20),
        children: [
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
              childAspectRatio: 1 / 1.64,
            ),
            itemBuilder: (_, index) {
              return Container(
                decoration: BoxDecoration(
                    // color: Colors.red,
                    ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      // height: 177.16,
                      height: height * 0.214,
                      width: double.infinity,
                      // width: width * 0.46,
                      // width: 160.42,
                      decoration: BoxDecoration(
                        // image:
                        //     DecorationImage(image: AssetImage(images[index])),
                        color: index == 0
                            ? Color(0xffD8EAEC)
                            : index == 1
                                ? Color(0xffDFE1F0)
                                : index == 2
                                    ? Color(0xffDEE6E1)
                                    : index == 3
                                        ? Color(0xffE2DEE6)
                                        : index == 4
                                            ? Color(0xffD6ECDA)
                                            : index == 5
                                                ? Color(0xffECD8D8)
                                                : Colors.amber,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          topLeft: Radius.circular(12),
                        ),
                      ),
                      child: Image.asset(
                        images[index],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            productsName[index],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '12.0\$',
                                style: GoogleFonts.lato(
                                  color: Color(0xff989FA8),
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 1,
                                ),
                              ),
                              Text(
                                '12.0\$',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          RatingBar.builder(
                            itemSize: 13,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            // itemPadding:
                            //     EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                      height: 113.1,
                      width: double.infinity,
                      // width: width * 0.46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Colors.white,
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.white,
                        //     offset: Offset(2.0, 3.0),
                        //     spreadRadius: 0,
                        //     blurRadius: 6,
                        //   ),
                        // ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
