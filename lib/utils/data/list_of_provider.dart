import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../provider/music_player_provider.dart';
import '../../provider/reorder_list_location_provider.dart';
import '../../provider/screen_index_provider.dart';
import '../../provider/search_icon_provider.dart';
import '../../provider/theme_provider.dart';

List<SingleChildWidget> listOfProviders = <SingleChildWidget>[
  ChangeNotifierProvider<ScreenIndexProvider>(
    create: (_) => ScreenIndexProvider(),
  ),
  ChangeNotifierProvider<SearchIconProvider>(
    create: (_) => SearchIconProvider(),
  ),
  ChangeNotifierProvider<ReOrderListLocation>(
    create: (_) => ReOrderListLocation(),
  ),
  ChangeNotifierProvider<DarkThemeProvider>(
    create: (_) => DarkThemeProvider(),
  ),
  ChangeNotifierProvider<MusicPlayerProvider>(
    create: (_) => MusicPlayerProvider(),
  ),
];
