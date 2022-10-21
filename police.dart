import 'package:flutter/material.dart';

class PolicePage extends StatefulWidget {
  const PolicePage({super.key});

  @override
  State<PolicePage> createState() => _PolicePageState();
}

class _PolicePageState extends State<PolicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo.shade50,
        onPressed: () {},
        tooltip: 'call',
        // ignore: prefer_const_constructors
        child: Icon(
          Icons.call,
          color: Colors.green,
          size: 40,
        ),
      ),
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.indigo,
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      color: Colors.indigo,
                      size: 28,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    Center(
                      child: Image.asset(
                        'assets/police.png',
                        scale: 1.0,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        'POLICE',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'PERAN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Peran polisi dalam masyarakat adalah memelihara keamanan dan ketertiban masyarakat (kamtibnas). Polisi siap sedia dalam melayani masyarakat apabila terjadi suatu masalah yang ada dalam masyarakat. Polisi siap melindungi apabila ada suatu kegiatan masyarakat, baik yang bertindak anarkis maupun biasa.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'FUNGSI',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'sebagai pengayom masyarakat, penegakkan hukum, yaitu mempunyai : mempunyai tanggung jawab kusus untuk memelihara ketertiban masyarakat dan menangani kejahatan baik dalam bentuk tindakan terhadap kejahatan maupun bentuk pencegahan kejahatan agar para anggota masyarakat dapat hidup dan bekerja dalam keadaan aman dan tenteram.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
