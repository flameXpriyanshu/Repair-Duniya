import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repair_duniya/components.dart/location_list_tile.dart';
import 'package:repair_duniya/components.dart/network_utility.dart';
import 'package:repair_duniya/models/autocomplate_prediction.dart';
import 'package:repair_duniya/models/constant.dart';
import 'package:repair_duniya/components.dart/location_list_tile.dart';
import 'package:repair_duniya/models/constant.dart';
import 'package:repair_duniya/models/place_auto_complate_response.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  List<AutocompletePrediction> placePredictions = [];

  void PlaceAutocomplate(String query) async {
    Uri uri =
        Uri.https("maps.googleapis.com", 'maps/api/place/autocomplete/json', {
      "input": query, //query parameter
      "key": google_api_key,
    });
    //Now Get request
    String? response = await NetworkUtility.fetchUrl(uri);

    if (response != null) {
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);
      if (result.predictions != null) {
        setState(() {
          placePredictions = result.predictions!;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding),
          child: CircleAvatar(
            backgroundColor: secondaryColor10LightTheme,
            child: SvgPicture.asset(
              "assets/location.svg",
              height: 20,
              width: 5,
              color: secondaryColor40LightTheme,
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: const Text(
          "Set Delivery Location",
          style: TextStyle(color: textColorLightTheme),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: secondaryColor10LightTheme,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close, color: Colors.black),
            ),
          ),
          const SizedBox(width: defaultPadding)
        ],
      ),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: TextFormField(
                onChanged: (value) {
                  PlaceAutocomplate(value);
                },
                autofocus: true,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "Search your location",
                  hintStyle: TextStyle(fontSize: 18),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SvgPicture.asset(
                      "assets/location_pin.svg",
                      color: secondaryColor40LightTheme,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 4,
            thickness: 3,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/location.svg",
                  height: 16,
                ),
                label: const Text("Use my Current Location"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor10LightTheme,
                  foregroundColor: textColorLightTheme,
                  elevation: 0,
                  fixedSize: const Size(double.infinity, double.infinity),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 4,
            thickness: 3,
            color: Colors.grey.shade300,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: placePredictions.length,
              itemBuilder: (context, index) => LocationListTile(
                press: () {},
                location: placePredictions[index].description!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:repair_duniya/components.dart/location_list_tile.dart';
// import 'package:repair_duniya/components.dart/network_utility.dart';
// import 'package:repair_duniya/models/autocomplate_prediction.dart';
// import 'package:repair_duniya/models/constant.dart';
// import 'package:repair_duniya/components.dart/location_list_tile.dart';
// import 'package:repair_duniya/models/constant.dart';
// import 'package:repair_duniya/models/place_auto_complate_response.dart';

// class SearchLocationScreen extends StatefulWidget {
//   const SearchLocationScreen({Key? key}) : super(key: key);

//   @override
//   State<SearchLocationScreen> createState() => _SearchLocationScreenState();
// }

// class _SearchLocationScreenState extends State<SearchLocationScreen> {
//   List<AutocompletePrediction> placePredictions = [];

//   void PlaceAutocomplate(String query) async {
//     Uri uri =
//         Uri.https("maps.googleapis.com", 'maps/api/place/autocomplete/json', {
//       "input": query, //query parameter
//       "key": google_api_key,
//     });
//     //Now Get request
//     String? response = await NetworkUtility.fetchUrl(uri);

//     if (response != null) {
//       PlaceAutocompleteResponse result =
//           PlaceAutocompleteResponse.parseAutocompleteResult(response);
//       if (result.predictions != null) {
//         setState(() {
//           placePredictions = result.predictions!;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.only(left: defaultPadding),
//           child: CircleAvatar(
//             backgroundColor: secondaryColor10LightTheme,
//             child: SvgPicture.asset(
//               "assets/location.svg",
//               height: 16,
//               width: 16,
//               color: secondaryColor40LightTheme,
//             ),
//           ),
//         ),
//         title: const Text(
//           "Set Delivery Location",
//           style: TextStyle(color: textColorLightTheme),
//         ),
//         actions: [
//           CircleAvatar(
//             backgroundColor: secondaryColor10LightTheme,
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.close, color: Colors.black),
//             ),
//           ),
//           const SizedBox(width: defaultPadding)
//         ],
//       ),
//       body: Column(
//         children: [
//           Form(
//             child: Padding(
//               padding: const EdgeInsets.all(defaultPadding),
//               child: TextFormField(
//                 autofocus: true,
//                 onChanged: (value) {
//                   PlaceAutocomplate(value);
//                 },
//                 textInputAction: TextInputAction.search,
//                 decoration: InputDecoration(
//                   hintText: "Search your location",
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     child: SvgPicture.asset(
//                       "assets/location_pin.svg",
//                       color: secondaryColor40LightTheme,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const Divider(
//             height: 4,
//             thickness: 4,
//             color: secondaryColor5LightTheme,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(defaultPadding),
//             child: ElevatedButton.icon(
//               onPressed: () {},
//               icon: SvgPicture.asset(
//                 "assets/location.svg",
//                 height: 16,
//               ),
//               label: const Text("Use my Current Location"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: secondaryColor10LightTheme,
//                 foregroundColor: textColorLightTheme,
//                 elevation: 0,
//                 fixedSize: const Size(double.infinity, 40),
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//               ),
//             ),
//           ),
//           const Divider(
//             height: 4,
//             thickness: 4,
//             color: secondaryColor5LightTheme,
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: placePredictions.length,
//               itemBuilder: (context, index) => LocationListTile(
//                 press: () {},
//                 location: placePredictions[index].description!,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
