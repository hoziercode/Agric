import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:agric_solution/buttons/input_button.dart';


class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 20.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Under G, Ogbomoso, Oyo state',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF252525),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Color(0xFF5DE898),
                  ),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Color(0xFF5DE898),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 20,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 250.0,
                      height: 36.0,
                      child: InputButton(
                        hinttext: 'Enter your search',
                        icon: Icon(Icons.search),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xFF5DE898),
                      radius: 20.0,
                      child: SvgPicture.asset('images/setting-4.svg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
