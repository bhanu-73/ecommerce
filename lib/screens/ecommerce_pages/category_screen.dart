import 'package:ecommerce/widgets/spaces.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/values/values.dart';
import 'package:ecommerce/widgets/category_card.dart';

class CategoryListPage extends StatefulWidget {
  // const CategoryListPage({Key? key}) : super(key: key);

  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(StringConst.CATEGORY, style: Styles.customTextStyle),
          centerTitle: true,
          leading:
              InkWell(onTap: () => Navigator.pushNamed(context, 'edashboard')),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded, color: Colors.white),
            ),
          ],
        ),
        body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: Sizes.MARGIN_16, vertical: Sizes.MARGIN_16),
            child: ListView.separated(
              itemCount: 8,
              separatorBuilder: (context, index) {
                return SpaceHeight12();
              },
              itemBuilder: (context, index) {
                return Container(
                    child: CategoryCardDesign(
                  onTap: () => Navigator.pushNamed(context, 'edashboard'),
                  width: MediaQuery.of(context).size.width,
                  opacity: 0.85,
                  hashandle: true,
                  catTextStyle: TextStyle(
                      color: Colors.black, fontSize: Sizes.TEXT_SIZE_20),
                ));
              },
            )));
  }
}
