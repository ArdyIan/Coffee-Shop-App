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
          ],
        ));
  }
}

TileLayer get openStreetMapTilelayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
    );
