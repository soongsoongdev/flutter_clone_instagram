import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<List<int>> groupBox = [[], [], []];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      groupBox[i % 3].add(1);
    }
    print(groupBox);
  }

  Widget _appbar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xffefefef),
            ),
            child: const Row(
              children: [
                Icon(Icons.search),
                Text(
                  '검색',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff838383),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.location_pin),
        ),
      ],
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            groupBox.length,
            (index) => Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 280,
                        color: Colors.red,
                      ),
                      Container(
                        height: 140,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                )).toList(),

        // children: [
        //   Expanded(
        //     child: Column(
        //       children: [
        //         Container(
        //           height: 280,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           height: 140,
        //           color: Colors.purple,
        //         ),
        //       ],
        //     ),
        //   ),
        //   Expanded(
        //     child: Column(
        //       children: [
        //         Container(
        //           height: 140,
        //           color: Colors.orange,
        //         ),
        //         Container(
        //           height: 140,
        //           color: Colors.blue,
        //         ),
        //       ],
        //     ),
        //   ),
        //   Expanded(
        //     child: Column(
        //       children: [
        //         Container(
        //           height: 140,
        //           color: Colors.blue,
        //         ),
        //         Container(
        //           height: 280,
        //           color: Colors.yellow,
        //         ),
        //         Container(
        //           height: 140,
        //           color: Colors.grey,
        //         ),
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //안정 영역
      body: SafeArea(
        child: Column(
          children: [
            // 상단에 고정되는 앱바는 안돼

            _appbar(),
            Expanded(child: _body()),
            //_body(),
          ],
        ),
      ),
    );
  }
}
