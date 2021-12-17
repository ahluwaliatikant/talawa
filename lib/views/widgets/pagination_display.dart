import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
<<<<<<< HEAD
import 'package:talawa/services/app_localization.dart';
=======
>>>>>>> ff1012f1a7079e4665dea0fa9b6fed78e64b8f41

class PaginationIcon extends StatelessWidget {
  const PaginationIcon({
    Key key,
    @required this.result,
    @required this.isNextPageExist,
    @required this.fetchMoreHelper,
  }) : super(key: key);

  final QueryResult result;
  final bool isNextPageExist;
  final Function fetchMoreHelper;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return _paginationWidget(context);
  }

  /// WIDGET TO BE DISPLAYED BASED ON THE [PAGINATION] TENDENCY
  Widget _paginationWidget(BuildContext context) {
    if (isNextPageExist) {
      //fetchMoreHelper();
=======
    return _paginationWidget();
  }

  /// WIDGET TO BE DISPLAYED BASED ON THE [PAGINATION] TENDENCY
  Widget _paginationWidget() {
    if (isNextPageExist) {
>>>>>>> ff1012f1a7079e4665dea0fa9b6fed78e64b8f41
      if (result.loading) {
        return const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            ),
          ),
        );
      } else {
<<<<<<< HEAD
        fetchMoreHelper();
=======
>>>>>>> ff1012f1a7079e4665dea0fa9b6fed78e64b8f41
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: GestureDetector(
              onTap: () => fetchMoreHelper(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
<<<<<<< HEAD
                children: <Widget>[
                  const Icon(
                    Icons.add_circle_outline_outlined,
                    size: 50,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    AppLocalizations.of(context).translate('Load More'),
                    style: const TextStyle(
=======
                children: const <Widget>[
                  Icon(
                    Icons.add_circle_outline_outlined,
                    size: 50,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Load More',
                    style: TextStyle(
>>>>>>> ff1012f1a7079e4665dea0fa9b6fed78e64b8f41
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
<<<<<<< HEAD
                  const SizedBox(height: 25),
=======
                  SizedBox(height: 25),
>>>>>>> ff1012f1a7079e4665dea0fa9b6fed78e64b8f41
                ],
              ),
            ),
          ),
        );
      }
    } else {
      return const SizedBox(height: 64);
    }
  }
}
