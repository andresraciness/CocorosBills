import 'package:cocorosbills/data/source/palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'home_bloc.dart';

const avatarImage = 'assets/images/photo_men.jpg';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeBloC(),
      child: Scaffold(
        backgroundColor: Palette.kWhite,
        appBar: AppBar(
          centerTitle: false,
          title: Text('CocorusBills',
              style: kHeadingScaffold.copyWith(
                letterSpacing: 2,
              )),
          backgroundColor: Palette.kWhite,
          elevation: 0.0,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 6),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.black,
                    spreadRadius: -3,
                  )
                ],
              ),
              child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Palette.kTransparent,
                  backgroundImage: Image.asset(
                    avatarImage,
                    fit: BoxFit.fill,
                  ).image),
            )
          ],
        ),
        body: Consumer<HomeBloC>(
          builder: (BuildContext context, homebloc, Widget? child) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HorizontalCategoriesScreen(homebloc: homebloc),
                const SizedBox(height: 20),
                //  const GaugeAnnotation(widget: Text('Hola'),)
                SizedBox(
                    height: 240,
                    width: 300,
                    child: _buildDistanceTrackerExample())
              ],
            );
          },
        ),
      ),
    );
  }

  SfRadialGauge _buildDistanceTrackerExample() {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      axes: <RadialAxis>[
        RadialAxis(
          showLabels: false,
          showTicks: false,
          radiusFactor: 0.8,
          minimum: 0,
          maximum: 240,
          // axisLineStyle: const AxisLineStyle(
          //   cornerStyle: CornerStyle.startCurve,
          //   thickness: 5,
          // ),
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                angle: 90,
                positionFactor: 0,
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:  <Widget>[
                    const Text(
                      '\$50.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Gasto del mes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration:  BoxDecoration(
                        color: const Color.fromARGB(255, 158, 5, 21),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:  Text('%', style: kBodyText.copyWith(fontSize: 15),),
                    )
                    
                  ],
                )),
          ],
          pointers: const <GaugePointer>[
            RangePointer(
              value: 142,
              width: 20,
              pointerOffset: -6,
              cornerStyle: CornerStyle.bothCurve,
              color: Color.fromARGB(255, 158, 5, 21),
              gradient: SweepGradient(colors: <Color>[
                Color.fromARGB(255, 226, 64, 64),
                Color.fromARGB(255, 182, 6, 6)
              ], stops: <double>[
                0.25,
                0.75
              ]),
            ),
            MarkerPointer(
              value: 136,
              color: Colors.white,
              markerType: MarkerType.circle,
            ),
          ],
        ),
      ],
    );
  }
}

class HorizontalCategoriesScreen extends StatelessWidget {
  const HorizontalCategoriesScreen({
    Key? key,
    required this.homebloc,
  }) : super(key: key);

  final HomeBloC homebloc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homebloc.categories.length,
        itemBuilder: (BuildContext context, int index) {
          final categegory = homebloc.categories[index];
          return GestureDetector(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 90,
              child: Column(
                children: [
                  const Divider(),
                  Expanded(
                    child: Card(
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          image: DecorationImage(
                            image: AssetImage(categegory.image!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text('${categegory.name}',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  const Divider(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
