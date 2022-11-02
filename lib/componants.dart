import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget DefaultFormFieldd({
  @required TextEditingController? controller,
  @required TextInputType? type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  GestureTapCallback? onTap,
  bool isPassword = false,
  FormFieldValidator<String>? validate,
  String? label,
  IconData? prefix,
  IconData? suffix,
  VoidCallback? suffixPressed,
  bool isClickable = true,
  int maxLines = 1,
  InputBorder? border,
  int? indexLenght,
  String? hint,
  double? width,
  double? height,
  Color? labelTextColor,
  textColor = Colors.black,
  textAlign = TextAlign.start,
}) =>
    Container(
      width: width,
      height: height,
      child: TextFormField(
        textAlign: textAlign,
        inputFormatters: [
          LengthLimitingTextInputFormatter(indexLenght),
        ],
        maxLines: maxLines,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        style: TextStyle(
          color: textColor,
        ),
        validator: validate,
        decoration: InputDecoration(
          labelText: label,
          labelStyle:
          TextStyle(color: labelTextColor, fontWeight: FontWeight.bold),
          hintText: hint,
          prefixIcon: Icon(
            prefix,
            color: Colors.lightBlue,
          ),
          suffixIcon: suffix != null
              ? IconButton(
            onPressed: suffixPressed,
            icon: Icon(
              suffix,
            ),
          )
              : null,
          border: border,
        ),
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Widget DefaultButton({double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  @required VoidCallback? function,
  @required String? text,
  double elevation = 18.0,
  Color textColors = Colors.white,
  double? fontSize}) =>
    Container(
      width: width,
      //color: background,
      height: 50,
      child: Material(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: elevation,
        color: background,
        //HexColor("F23B3F"),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // Add This
        child: MaterialButton(
          onPressed: function,
          child: Text(
            isUpperCase ? text!.toUpperCase() : text!,
            style: TextStyle(color: textColors, fontSize: fontSize),
          ),
        ),
      ),
    );


Widget DefaultButton2({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  required VoidCallback? function,
  required String? text,
  double elevation = 18.0,
  Color textColors = Colors.white,
  double? fontSize,
  double? iconSize,
  Color? iconColor,
  IconData? icon,
}) =>
    Container(
      width: width,
      //color: background,
      height: 50,
      child: Material(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: elevation,
        color: background,
        //HexColor("F23B3F"),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // Add This
        child: MaterialButton(
          onPressed: function,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text!,
                style: TextStyle(color: textColors, fontSize: fontSize),
              ),
            ],
          ),
        ),
      ),
    );


Widget Activities({
  required Color? color,
  Color? iconColor,
  required String? text,
  required GestureTapCallback? nest,
}) =>
    Column(
      children: [
        Container(
          height: 155,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey[350]!,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: nest,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),

                      ),
                    ),
                    Icon(Icons.facebook_outlined, size: 60, color: iconColor,),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                text!,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color
                ),
              ),
            ],
          ),
        ),
      ],
    );

Widget DrawerScreen() =>
    ListView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.lightGreen,
          ),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: 85.0,
                  height: 85.0,
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    Text(
                      'measser hussein',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white

                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'details',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white

                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.accessibility_new),
          title: const Text('Activities school'),
          onTap: () {

          },
        ),
        const ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('News'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),

        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    );

Widget drawerAll() =>
    Drawer(
      backgroundColor: Colors.lightGreen[400],
      child: DrawerScreen(),
    );

Widget appBarContext() =>
    AppBar(
      backgroundColor: Colors.lightGreen,
      elevation: 0.0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Home',
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notification_add_outlined))
      ],
    );

// class appbar {
//   static const Color? backgroundColor = Colors.lightGreen;
//   static const double? elevation = 0.0;
//   static Widget? title = Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: const [
//       Text(
//         'Home',
//       ),
//     ],
//   );
//   static List<Widget> action=[
//     IconButton(
//         onPressed: () {}, icon: const Icon(Icons.notification_add_outlined))
//   ];
//
// }