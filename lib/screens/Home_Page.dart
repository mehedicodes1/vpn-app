import 'package:flutter/material.dart';
import 'package:vpn_app/colors/colors.dart';
import 'package:vpn_app/screens/Premimum_Page.dart';
import 'package:vpn_app/screens/Server_Page.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  num downloadsped = 0;
  num uploadspeed = 0;
  String Contery = 'DE, Berlin';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox();
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: BoxShadowColor),
                height: 40,
                width: 40,
                child: const Icon(Icons.widgets_outlined),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PremiumPage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: BoxShadowColor,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: const Row(
                  children: [
                    Icon(Icons.workspace_premium_outlined,
                        color: TextTitleColor),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Premium",
                      style: TextStyle(
                          color: TextDisColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),

            //upload and download widgets

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_open_rounded,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Not connected",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: TextTitleColor),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: BoxShadowColor,
                ),
                color: FildColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/akchobi-000webhostapp.appspot.com/o/flag_germany.png?alt=media&token=f791448f-c66f-45ee-8307-55be7dd4c703'),
                  Text(
                    '$Contery',
                    style: const TextStyle(
                        fontSize: 20,
                        color: TextTitleColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const Icon(Icons.place, color: TextTitleColor),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppBarColor),
                  child: Center(
                    child: Row(
                      children: [
                        const Icon(Icons.file_download_outlined,
                            color: Colors.red),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Download",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: TextTitleColor),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '$downloadsped Mb/S',
                              style: const TextStyle(color: TextDisColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 50,
                              height: 2,
                              decoration:
                                  const BoxDecoration(color: FildDesign),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 150,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppBarColor),
                  child: Center(
                    child: Row(
                      children: [
                        const Icon(Icons.file_upload_outlined,
                            color: Colors.green),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Upload",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: TextTitleColor),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '$uploadspeed Mb/S',
                              style: const TextStyle(color: TextDisColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 50,
                              height: 2,
                              decoration:
                                  const BoxDecoration(color: FildDesign),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            // Connact disconnect button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade400,
                  elevation: 20,
                  fixedSize: const Size(200, 60)),
              onPressed: () {},
              child: const Text(
                'Connect',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const server_Page(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    color: TextTitleColor,
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.public_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text(
                      "Change Server",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
