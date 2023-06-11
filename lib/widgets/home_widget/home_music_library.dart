import 'package:flutter/material.dart';
import 'package:songsbyweather/widgets/common_widget/custom_text.dart';

class HomeMusicLibrary extends StatelessWidget {
  const HomeMusicLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.0,
          vertical: 12.0,
        ),
        width: double.infinity,
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Recommendeed",
              isBold: false,
              fontSize: 24.0,
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Someone hold my hand"),
                      leading: Image.asset("assets/images/musical-note.png"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow_outlined,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
