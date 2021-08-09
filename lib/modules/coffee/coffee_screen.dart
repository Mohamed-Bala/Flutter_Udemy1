import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CoffeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                    color: HexColor('#6c301a'),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 600.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70)),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor('#6c301a'),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,
            right: 0,
            // bottom: 5,
            child: Image.asset(
              'asset/images/kunto_Coffee_1.png',
              height: 320.0,
              width: 270.0,
            ),
          ),
          Positioned(
            top: 237,
            left: 30,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 0,
                      offset: Offset(3, 4),
                    ),
                  ]),
              child: Icon(
                Icons.favorite,
                color: Colors.brown,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                )),
          ),
          Positioned(
            bottom: 40,
            left: 30,
            right: 30,
            child: Row(
              children: [
                Text(
                  '\$28',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Order Now',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 75,
                        ),
                        Icon(Icons.arrow_right_alt_outlined),
                      ],
                    )),
              ],
            ),
          ),
          Positioned(
            top: 350,
            left: 30,
            child: Container(
              height: 34,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(2, 3),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 30,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Americano Coffee",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: Text(
                  ' Coffee is a brewed drink prepared from roasted coffee beans,'
                  'the seeds of berries from certain Coffea species.'
                  ' All fruit must be further processed from a raw material—the fruit and seed—into a stable, raw product; un-roasted, '
                  'green coffee. To process the berries, the seed is separated from the fruit to produce green coffee. Green coffee is then roasted,'
                  'a process which transforms the raw product (green coffee) into a consumable product (roasted coffee).'
                  'Roasted coffee is ground into a powder and mixed with water to produce a cup of coffee.',
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star, color: Colors.amber),
                Icon(Icons.star_border_outlined, color: Colors.amber),
              ]),
            ]),
          )
        ],
      ),
    );
  }
}
