import 'package:flutter/material.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/component/searchbar.dart';

class BodyLiveRatePage extends StatelessWidget {
  const BodyLiveRatePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Live Exchange Rates',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'Last updates: Feb 13, 2023 - 06:47',
              style: TextStyle(
                fontSize: 14,
                fontWeight: w500,
                color: Colors.grey.shade400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(16),
            height: 842,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1, color: grey300),
            ),
            child: Column(
              children: [
                Container(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                         const Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            labelColor: grey900,
                            unselectedLabelColor: grey400,
                            isScrollable: true,
                            labelPadding: EdgeInsets.only(left: 0, right: 24),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorPadding: EdgeInsets.only(left: 0, right: 24),
                            indicatorColor: kMainColor,
                            tabs: [
                              Tab(
                                child: Text('Market'),
                              ),
                              Tab(
                                child: Text('Currency'),
                              ),
                              Tab(
                                child: Text('Bank'),
                              ),
                            ],
                          ),
                        ),
                        SearchBartxt(),
                        Container(
                          height: 600,
                          width: double.infinity,
                          child: TabBarView(children: [
                            Container(
                              child: Center(child: Text('gfghvghvghvy')),
                            ),
                            Container(
                              child: Center(child: Text('test 2')),
                            ),
                            Container(
                              child: Center(child: Text('test5')),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

