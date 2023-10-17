import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../widgets/page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFCB47),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 290),
                    Container(
                      padding: const EdgeInsets.only(top: 23),
                      child: Text(
                        'Notícias',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Color(0xff455A64),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 55),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 67,
                              width: 67,
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))
                                  // alignment: Alignment.center,
                                  // fit: BoxFit.fill,
                                  // image: AssetImage(
                                  //     'assets/images/especialista.png'),

                                  ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, bottom: 16),
                                // child: SizedBox(
                                //   height: 100,
                                //   width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text(
                                    //   'Especialidades',
                                    //   style: GoogleFonts.montserrat(
                                    //     textStyle: const TextStyle(
                                    //       color: Color(0xff455A64),
                                    //       fontSize: 16,
                                    //       fontWeight: FontWeight.bold,
                                    //     ),
                                    //   ),
                                    // ),
                                    // const SizedBox(height: 10),
                                    Text(
                                      'Médicos e instituições que tenham expertise no atendimento ao público PcD',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          color: Color(0xff455A64),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        height: 1.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 300)
                    ],
                  ),
                ),
                const PageIndicator()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class NewsRepository {
//   Future<NewsChannelsHeadlinesModel> fetchNewsChannelHealinesApi() async {
//     String url =
//         'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=YOUR_API_KEY';

//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       final body = jsonDecode(response.body);
//       return NewsChannelsHeadlinesModel.fromJson(body);
//     }
//     throw Exception('Error');
//   }
// }

// class NewsViewModel {
//   final _rep = NewsRepository();

//   Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi() async {
//     final response = await _rep.fetchNewsChannelHealinesApi();
//     return response;
//   }
// }



