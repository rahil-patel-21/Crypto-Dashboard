import 'package:webstabledemo/screens/home/references/home_references.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constrains) {
      print(constrains.maxWidth);
      return Container(
          child: Row(
        children: [
          if (constrains.maxWidth >= 1000) _leftSideBar(context),
          Container(
            width: 500,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          )
        ],
      ));
    }));
  }

  Widget _leftSideBar(BuildContext context) {
    return Container(
      color: AppTheme.primaryColor,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: 35, left: 50, bottom: 35),
      child: Column(
        children: [
          Text(
            appName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SideTabButton(title: 'DashBoard', selectedItem: 'DashBoard'),
                  SideTabButton(title: 'Wallet', selectedItem: 'DashBoard'),
                ],
              ),
              Text('Logout'),
            ],
          ))
        ],
      ),
    );
  }
}
