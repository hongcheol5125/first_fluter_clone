import 'package:flutter/material.dart';
import 'package:hong/models/categorypart.dart';
import 'package:hong/models/subcategory.dart';
import 'package:hong/widgets/categoryicon.dart';

import '../helpers/appcolors.dart';
import '../widgets/mainappbar.dart';

class DetailsPage extends StatefulWidget {

  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  final SubCategory subCategory;

  DetailsPage({required this.subCategory});

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                  child: Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/' +
                                  widget.subCategory.imgName +
                                  '.jpg'),
                              fit: BoxFit.cover)
                              ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.transparent
                            ]
                          )
                        )
                      )
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryIcon(
                              color: widget.subCategory.color,
                              iconName: widget.subCategory.icon,
                              size: 50
                            ),
                      
                            SizedBox(width: 10),
                      
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Japanese building',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                )
                               ),
                      
                               SizedBox(height: 10),
                      
                               Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: widget.subCategory.color,
                                  borderRadius: BorderRadius.circular(20)
                                ),                             
                                child: Text('\$50.00 / lb',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                                 )
                                )
                               )
                              ],
                            )
                          ],
                        ),
                      )
                    ),
                    Positioned(
                      right: 20,
                      top: 100,
                      child: Container(
                        padding: EdgeInsets.only(top: 5, left: 15, right: 8, bottom: 8),
                        decoration: BoxDecoration(
                          color: AppColors.MAIN_COLOR,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                          blurRadius: 20,
                          offset: Offset.zero
                           )
                          ]
                        ),
                        child: Row(
                          children: [
                            Text('3',
                            style: TextStyle(
                              color: Colors.white, fontSize: 15
                            )
                           ),
                           Icon(Icons.shopping_cart, color: Colors.white, size: 15)
                          ],
                        )
                      ),
                    ),
                    MainAppBar(
                      themeColor: Colors.white,
                    )
                  ],
                )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Text('Seleccione la parte que desea:'),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.subCategory.parts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.subCategory.parts.forEach((CategoryPart part) {
                              part.isSelected = widget.subCategory.parts[index] == part;
                            });
                          });
                        },
                        child : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              border: widget.subCategory.parts[index].isSelected ?
                              Border.all(color: widget.subCategory.color, width: 7)
                              : null,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage('assets/imgs/' +
                                widget.subCategory.parts[index].imgName + '.jpg'
                               ), fit: BoxFit.cover
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset.zero,
                                  blurRadius: 10
                                )
                              ]
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Text(widget.subCategory.parts[index].name,
                            style: TextStyle(color: widget.subCategory.color)
                            )
                          )
                        ],
                      )
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Unidad: '),
                            TextSpan(text: 'Libra', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: '(max. 20)', style: TextStyle(fontSize: 12))
                          ]
                        )
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(                        
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset.zero,
                            color: Colors.black.withOpacity(0.1)
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: widget.amount < 20 ? () {
                              setState(() {
                                widget.amount ++;
                                widget.cost = widget.price * widget.amount;
                               }
                              );
                            } : null,
                            child: Icon(Icons.add_circle_outline,
                          size: 50,
                          color: AppColors.MEATS
                          )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Center(
                                child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: widget.amount.toString(), style: TextStyle(fontSize: 40)),
                                    TextSpan(text: 'lbs.', style: TextStyle(fontSize: 20))
                                  ]
                                )
                                                        ),
                              ),
                            )
                          ),
                          GestureDetector(
                            onTap: widget.amount > 0 ?() {
                              setState(() {
                                widget.amount --;
                                widget.cost = widget.price * widget.amount;
                               }
                              );
                            } : null,
                            child: Icon(Icons.remove_circle_outline, size: 50, color: Colors.grey),
                          )
                        ]
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Precio: '),
                                TextSpan(text: '\$${widget.price} /  lb',
                                style: TextStyle(fontWeight: FontWeight.bold)
                                )
                              ]
                            )
                          ),
                          Text('\$${widget.cost}',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                        margin: EdgeInsets.only(left:20, right: 20, bottom: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),                        
                        child: Material(
                            color: AppColors.MAIN_COLOR,
                            child: InkWell(
                                splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                                highlightColor:
                                    AppColors.MAIN_COLOR.withOpacity(0.2),
                                onTap: () {
                                },
                                child: Container(
                                    padding: EdgeInsets.all(15),
                                    child: Text('Anair al Carrito',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: AppColors.MAIN_COLOR,
                                            width: 4)
                                            )
                                          )
                                        )
                                      ),
                                    )
                      ),
                       Container(
                        margin: EdgeInsets.only(left:20, right: 20, bottom: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),                        
                        child: Material(
                            color: AppColors.DARK_GREEN,
                            child: InkWell(
                                splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                                highlightColor:
                                    AppColors.MAIN_COLOR.withOpacity(0.2),
                                onTap: () {
                                },
                                child: Container(
                                    padding: EdgeInsets.all(15),
                                    child: Text('Locacion del Producto',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: AppColors.DARK_GREEN,
                                            width: 4)
                                            )
                                          )
                                        )
                                      ),
                                    )
                      )
          ],
       )
      )
    );
  }
}
