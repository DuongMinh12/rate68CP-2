import 'package:flutter/material.dart';
import 'package:testappppp/add_images.dart';
import 'package:testappppp/component/divider.dart';
import 'package:testappppp/component/page_change_button.dart';
import 'package:testappppp/constants.dart';
import 'package:testappppp/component/searchbar.dart';
import 'package:testappppp/screen/live_exchange_page/components/data_live_exchange_page.dart';

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
            height: 850,
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
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          margin: EdgeInsets.only(bottom: 6, top: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade100,
                          ),
                          // height: 600,
                          child: Row(
                            children: [
                              Text(
                                'Name',
                                style: stylew4g5s12,
                              ),
                              Spacer(),
                              Text(
                                'Buy',
                                style: stylew4g5s12,
                              ),
                              Spacer(),
                              Text(
                                'Sell',
                                style: stylew4g5s12,
                              ),
                              Spacer(),
                              Text(
                                'Chart',
                                style: stylew4g5s12,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 560,
                          width: double.infinity,
                          child: TabBarView(children: [
                            Container(
                              // height: 300,
                              child: ListView.builder(
                                itemCount: 5,
                                  itemBuilder: (BuildContext context, int indext){
                                return DataExchangePage();
                              }),
                            ),
                            // DataExchangePage(),
                            Container(
                              // height: 300,
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int indext){
                                    return DataExchangePage();
                                  }),
                            ),
                            Container(
                              // height: 300,
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int indext){
                                    return DataExchangePage();
                                  }),
                            ),
                          ]),
                        ),
                        PageChangeButton()
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


