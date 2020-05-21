import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impuls/constants.dart';
import 'package:impuls/data/UsuarioData.dart';

class ProfileCard extends StatefulWidget {
  ProfileCard({Key key}) : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> with AutomaticKeepAliveClientMixin{
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
      child: Container(
        height: kSpacingUnit * 6,
        width: ScreenUtil().setWidth(375 / 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSpacingUnit.w * 2),
          color: kBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kSpacingUnit,
            horizontal: kSpacingUnit * 2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(kSpacingUnit * 2),
                ),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/loading.png',
                  width: kSpacingUnit * 3.4,
                  image: usuarioPrueba.imagenURL,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                width: kSpacingUnit,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    usuarioPrueba.nombre,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: kNameTextStyle,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(usuarioPrueba.lugar + "    "),
                      Text("•    "),
                      SvgPicture.asset(
                        'assets/Diamon.svg',
                        width: kSpacingUnit,
                      ),
                      Text(
                        usuarioPrueba.nivel,
                        style: kCaptionTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
