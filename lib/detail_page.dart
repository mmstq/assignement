import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String name;
  final String spec;
  final String photo;

  const DetailScreen(
      {Key? key, required this.name, required this.spec, required this.photo})
      : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.93),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    widget.photo,
                    width: size.width,
                    height: 340,
                    fit: BoxFit.fitWidth,
                    scale: 1.3,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.indigo,
                              )),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.more_vert_rounded,
                                color: Colors.indigo,
                              )),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                        const Spacer(),
                        MaterialButton(
                          minWidth: 0,
                          onPressed: () {},
                          shape: const CircleBorder(),
                          color: Colors.white,
                          elevation: 5,
                          child: const Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ),
                        ),
                        MaterialButton(
                          minWidth: 0,
                          onPressed: () {},
                          shape: const CircleBorder(),
                          color: Colors.white,
                          elevation: 5,
                          child: const Icon(
                            Icons.message_rounded,
                            color: Colors.grey,
                          ),
                        ),
                        MaterialButton(
                          minWidth: 0,
                          onPressed: () {},
                          shape: const CircleBorder(),
                          color: Colors.white,
                          elevation: 5,
                          child: const Icon(
                            Icons.videocam_rounded,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Text(widget.spec,
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 20,
                          ),
                        SizedBox(
                          width: size.width * .02,
                        ),
                        const Text(
                          '278 Reviews',
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        const Text('Available',
                            style: TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    SizedBox(height: size.height * .03),
                    const Text('About',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(height: size.height * .01),
                    const Text(
                      'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit Mauris, Elementum Ac Risus, Pellentesque Consectetur A Faucibus Est. Sapien Rutrum Nibh Semper At Nullam Turpis Porttitor Quis Fames. Posuere In Volutpat Diam Adipiscing Elit Malesuada Neque Non.',
                      style: TextStyle(letterSpacing: 0.3, fontSize: 15),
                    ),
                    SizedBox(height: size.height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customBox(
                            icon: Icons.military_tech_rounded,
                            title: '7 Years',
                            subTitle: 'Experience'),
                        customBox(
                            icon: Icons.military_tech_rounded,
                            title: '15.4 K',
                            subTitle: 'Patient'),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(12)),
                        width: double.maxFinite,
                        child: const Center(
                            child: Text(
                              'Schedule Appointment',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customBox(
      {required IconData icon,
      required String title,
      required String subTitle}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      height: 60,
      width: 170,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.indigo,
            size: 36,
          ),
          const Spacer(),
          Column(
            children: [
              Text(title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              Text(
                subTitle,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
