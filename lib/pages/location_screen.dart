import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songsbyweather/provider/reorder_list_location_provider.dart';
import 'package:songsbyweather/widgets/common_widget/custom_app_bar.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    Provider.of<ReOrderListLocation>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 48.0),
        child: Consumer<ReOrderListLocation>(
          builder: (context, value, child) {
            return Stack(
              children: [
                ReorderableListView(
                  children: <Widget>[
                    for (final items in value.item)
                      Card(
                        color: Colors.blueGrey,
                        key: ValueKey(items),
                        elevation: 2,
                        child: ListTile(
                          title: Text(items),
                          leading: Icon(
                            Icons.work,
                            color: Colors.black,
                          ),
                        ),
                      ),
                  ],
                  onReorder: value.setRecord,
                ),
                Positioned(
                  bottom: 16,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        children: [
                          Text(
                            '${value.item.length}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () => value.sorting(),
                            icon: Icon(Icons.sort_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
