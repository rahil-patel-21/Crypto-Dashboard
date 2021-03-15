import 'package:webstabledemo/screens/home/references/home_references.dart';

class SideTabButton extends StatelessWidget {
  final String title, selectedItem;
  final IconData icon;
  final Function(String) onTap;
  SideTabButton(
      {this.icon, this.selectedItem = '', this.title = '', this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isTrue = title == selectedItem ? true : false;
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap(title);
        }
      },
      child: Container(
          width: 135,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: isTrue ? AppTheme.whiteColor : AppTheme.primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: isTrue ? FontWeight.bold : FontWeight.normal,
              color: isTrue ? AppTheme.primaryColor : AppTheme.whiteColor,
            ),
          )),
    );
  }
}
