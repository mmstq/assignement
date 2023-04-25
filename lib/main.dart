import 'package:fitlet/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dummy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.94),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(FontAwesomeIcons.stethoscope,
                          color: Colors.indigo),
                      const SizedBox(
                        width: 24,
                      ),
                      const Icon(Icons.location_on_outlined,
                          size: 35, color: Colors.indigo),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Home'),
                          Text('AB-120, Shalimar Bagh, Delhi...')
                        ],
                      ),
                      const Spacer(),
                      Stack(
                        alignment: Alignment.topRight,
                        children: const [
                          Icon(FontAwesomeIcons.bell, color: Colors.indigo),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 5,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Find Your Medical Solution!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 130,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.indigo),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -30,
                          left: -24,
                          child: Image.asset(
                            'assets/doctor.png',
                            height: 160,
                          )),
                      Positioned(
                        top: 24,
                        right: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 180,
                              child: Text(
                                'Take Care of your health during pendemic',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Book Appointment'))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Specialities',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/kidneys_bold.png',
                            height: 55,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Urology',
                            style: TextStyle(color: Colors.indigo),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/uterus.png',
                            height: 55,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Period-doubt',
                            style: TextStyle(color: Colors.indigo),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/sexology.png',
                            height: 55,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Sexology',
                            style: TextStyle(color: Colors.indigo),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/acne.png',
                            height: 55,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Acne',
                            style: TextStyle(color: Colors.indigo),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/joint.png',
                            height: 55,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Knee-replacement',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.indigo),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/kidneys.png',
                            height: 55,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Kidney-stones',
                            style: TextStyle(color: Colors.indigo),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Top Doctors',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 16),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Colors.grey.shade300, width: 3)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              'assets/doctors${index + 1}.png',
                              fit: BoxFit.fitHeight,
                            )),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  final names = [
    'Dr. Rahul Trivedi',
    'Dr. madhu yadav',
    'Dr. radhika sinha',
    'Dr. Kapil tyagi',
    'Dr. mukesh jain'
  ];
  final spec = [
    'MBBS, BCS (urology Specialties)',
    'MBBS, BCS (Sexology Specialties)',
    'MBBS, BCS (Acne Specialties)',
    'MBBS, BCS (kidney Specialties)',
    'MBBS, BCS (urology Specialties)'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white.withOpacity(0.94),
        body: Padding(
          padding: const EdgeInsets.only(left:24,right: 24,top: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(FontAwesomeIcons.stethoscope,
                          color: Colors.indigo),
                      const SizedBox(
                        width: 24,
                      ),
                      const Icon(Icons.location_on_outlined,
                          size: 35, color: Colors.indigo),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Home'),
                          Text('AB-120, Shalimar Bagh, Delhi...')
                        ],
                      ),
                      const Spacer(),
                      Stack(
                        alignment: Alignment.topRight,
                        children: const [
                          Icon(FontAwesomeIcons.bell, color: Colors.indigo),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.filter_list_alt,
                        color: Colors.indigo,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Doctors',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.indigo),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/kidneys_bold.png',
                            height: 40,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Urology',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFF03C4E5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/joint.png',
                            height: 40,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Bone',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFC2DC81)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/sexology.png',
                            height: 40,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Urology',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blueGrey),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/more.png',
                            height: 40,
                            width: 30,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'More',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 32,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 1),
                      borderRadius: BorderRadius.circular(24)),
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        width: 200,
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'doctors,locations, diseases.....',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 24,
                        width: 1,
                        color: Colors.indigo,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(Icons.mic),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 550,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => DetailScreen(
                                        name: names[index], spec: spec[index],photo: 'assets/doctors${index + 1}.png',)),
                              ),child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        margin: const EdgeInsets.only(bottom: 16),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/doctors${index + 1}.png',
                                  height: 70,
                                  width: 70,
                                )),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.indigo),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  spec[index],
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                    children: [
                                      for (int i=0; i<5; i++)
                                        const Icon(
                                          Icons.star,
                                          color: Colors.orangeAccent,
                                          size: 20,
                                        ),
                                      const Text('  (500)')
                                    ]
                                )
                              ],
                            ),
                            Spacer(),

                            const Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Icon(Icons.calendar_month,color: Colors.indigo,),
                              ),
                            )
                          ],
                        ),
                      ),);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
