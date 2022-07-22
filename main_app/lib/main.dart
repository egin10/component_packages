import 'package:flutter/material.dart';
import 'package:my_components_packages/my_components_packages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contact Apps'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              CustomCard(
                  imageUrl:
                      'https://images.tokopedia.net/img/cache/500-square/product-1/2017/5/21/18732692/18732692_bb7fa32c-c7b2-40ef-9e04-6ffb2867c344_745_824.png',
                  title: '0827-3617-2837',
                  subtitle: 'Rahmat Hidayat',
                  bodyContent: '-'),
              CustomCard(
                  title: '0827-8463-7361',
                  subtitle: 'Burhan Jayadi',
                  bodyContent: '-'),
              CustomCard(
                  imageUrl:
                      'https://i1.wp.com/www.thenerddaily.com/wp-content/uploads/2018/08/One-Punch-Man-Season-2.jpg',
                  title: '0827-9347-4528',
                  subtitle: 'Ilham Nasution',
                  bodyContent: '-'),
            ],
          ),
        ),
      ),
    );
  }
}
