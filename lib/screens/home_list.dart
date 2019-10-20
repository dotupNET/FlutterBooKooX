import 'package:flutter/material.dart';

import 'package:bookoo2/shared/home_header_search.dart' show HomeHeaderSearch;
import 'package:bookoo2/utils/general.dart';

class HomeList extends StatefulWidget {
  HomeList({
    Key key,
  }) : super(key: key);

  @override
  _HomeListState createState() => new _HomeListState();
}

class _HomeListState extends State<HomeList> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Function onAddLedgerList = () => General.instance.navigateScreenNamed(context, '/ledger_item_add');
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0.0,
        title: HomeHeaderSearch(
          margin: EdgeInsets.only(left: 20.0),
          textEditingController: textEditingController,
          actions: <Widget>[
            Container(
              width: 56.0,
              child: RawMaterialButton(
                padding: EdgeInsets.all(0.0),
                shape: CircleBorder(),
                onPressed: onAddLedgerList,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.only(top: 44.0, left: 60.0, right: 60.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[

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
