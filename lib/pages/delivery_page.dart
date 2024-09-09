import 'package:coffee_shop/pages/widget/openstreetmap.dart';
import 'package:coffee_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Delivery',
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            FlutterMap(
                options: MapOptions(
                  initialCenter: LatLng(1.2878, 103.8666),
                  initialZoom: 11,
                  interactionOptions:
                      InteractionOptions(flags: InteractiveFlag.doubleTapZoom),
                ),
                children: [
                  openStreetMapTilelayer,
                  MarkerLayer(markers: [
                    Marker(
                        point: LatLng(1.2878, 103.8666),
                        width: 60,
                        height: 60,
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.location_pin,
                          size: 60,
                          color: Colors.red,
                        ))
                  ])
                ]),
            DraggableScrollableSheet(
                initialChildSize: 0.3,
                minChildSize: 0.3,
                maxChildSize: 0.8,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                        )),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 150),
                            child: Container(
                              width: 100,
                              height: 3,
                              decoration: BoxDecoration(color: Colors.grey),
                            )),
                        Text(
                          '10 minutes left',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: semiBold, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Delivery to ',
                              // textAlign: TextAlign.center,
                            ),
                            Text(
                              'JL.Kpg Sutoyo',
                              style: TextStyle(fontWeight: semiBold),
                              // textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buildDelivaryContainer(),
                        buildDelivaryContainer2(),
                      ],
                    ),
                  );
                }),
          ],
        ));
  }
}

Widget buildDelivaryContainer() {
  return Padding(
    padding: const EdgeInsets.all(25),
    child: Container(
        height: 70,
        width: 250,
        decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            )),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,
                  child: Image.asset(
                    'assets/iconmotor.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivered your order',
                    style: TextStyle(fontWeight: semiBold),
                    // textAlign: TextAlign.center,
                  ),
                  Text(
                    'We will deliver your goods to you in the shortes possible time',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12),
                    // textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        )),
  );
}

Widget buildDelivaryContainer2() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
        height: 70,
        width: 350,
        decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 1,
            )),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.lightBlue,
                  child: Image.asset(
                    'assets/photo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brooklyn Simmons',
                    style: TextStyle(fontWeight: semiBold),
                    // textAlign: TextAlign.center,
                  ),
                  Text(
                    'Personal Counter',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12),
                    // textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 30,
                width: 30,
                color: Colors.white,
                child: Icon(
                  Icons.phone,
                  size: 27,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        )),
  );
}

TileLayer get openStreetMapTilelayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
    );
