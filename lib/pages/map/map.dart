import 'package:auto_route/auto_route.dart';
import 'package:event_hub/pages/widgets/my_button.dart';
import 'package:event_hub/pages/widgets/my_textfield.dart';
import 'package:event_hub/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  BitmapDescriptor? myIcon;
  TextEditingController searchController = TextEditingController();
  final Completer<GoogleMapController> _controller = Completer();

  late GoogleMapController mapController;
  @override
  void initState() {
    super.initState();
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(48, 48)),
            'assets/icons/current_location.png')
        .then((onValue) {
      myIcon = onValue;
    });
  }

  final LatLng startingPosition = const LatLng(27.7149298, 85.2903343);
  // Future<void> _goToCurrentLocation() async {
  //   mapController?.animateCamera(CameraUpdate.newCameraPosition(
  //       CameraPosition(target: currentLatLng!, zoom: 17)

  //       //17 is new zoom level
  //       ));
  // }

  Set<Marker> markers = {};

  // addMarkers() async {
  //   BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
  //     const ImageConfiguration(),
  //     "assets/images/current.png",
  //   );

  //   markers.add(Marker(
  //     //add start location marker
  //     markerId: MarkerId(currentLatLng.toString()),
  //     position: currentLatLng!, //position of marker
  //     infoWindow: const InfoWindow(
  //       //popup info
  //       title: 'My current Positionn',
  //     ),
  //     icon: markerbitmap, //Icon for Marker
  //   ));
  //   setState(() {
  //     //refresh UI
  //   });
  // }
  // static Marker myLocationMarker = const Marker(
  //   markerId: MarkerId('My Current Location'),
  //   infoWindow: InfoWindow(
  //     title: 'My Current Location',
  //   ),
  //   icon: BitmapDescriptor.defaultMarker,
  // );

  Future<Position> _determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position position = await Geolocator.getCurrentPosition();
    Geolocator.getCurrentPosition();

    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          GoogleMap(
            zoomControlsEnabled: false,
            // myLocationEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: startingPosition,
              zoom: 10,
            ),
            markers: markers,
            onMapCreated: (GoogleMapController controller) {
              setState(() {
                mapController = controller;
              });
            },
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 60, bottom: 20, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 50,
                      width: 280,
                      child: CustomTextFeild(
                        onChanged: ((value) {
                          //print(value);
                        }),
                        hintText: 'Search new address',
                        prefixIcon: IconButton(
                            onPressed: (() {
                              const InkWell();
                            }),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: (() async {
                        Position position = await _determinePosition();
                        mapController.animateCamera(
                            CameraUpdate.newCameraPosition(CameraPosition(
                                    target: LatLng(
                                        position.latitude, position.longitude),
                                    zoom: 17)

                                //17 is new zoom level
                                ));
                        markers.clear();
                        markers.add(Marker(
                            markerId: const MarkerId('currentLocation'),
                            // icon: BitmapDescriptor.defaultMarker,
                            infoWindow: const InfoWindow(
                              title: 'My Current Location',
                            ),
                            icon: myIcon!,
                            position:
                                LatLng(position.latitude, position.longitude)));

                        setState(() {});

                        // addMarkers();
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffEEEEEE),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(
                          'assets/icons/current_location.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    )
                  ],
                ),
                CustomButton(
                  buttonTxt: 'ADD',
                  onPressed: () {
                  context.pushRoute(const HiddenDrawerRouter());
                  },
                // )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
