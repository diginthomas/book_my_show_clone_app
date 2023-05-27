import 'package:flutter/material.dart';

import 'head.dart';

class SubHead extends StatelessWidget {
  const SubHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      height: MediaQuery.of(context).size.height / 23.5,
      color: const Color(0xff222539),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
              ),
              TextButton(
                  onPressed: () {},
                  child:
                      Text('Movies', style: TextStyle(color: Colors.white70))),
              TextButton(
                  onPressed: () {},
                  child:
                      Text('Stream', style: TextStyle(color: Colors.white70))),
              TextButton(
                  onPressed: () {},
                  child: Text('Live', style: TextStyle(color: Colors.white70))),
              TextButton(
                  onPressed: () {},
                  child:
                      Text('Events', style: TextStyle(color: Colors.white70))),
              TextButton(
                  onPressed: () {},
                  child:
                      Text('Plays', style: TextStyle(color: Colors.white70))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('ListYourShow',
                      style: TextStyle(color: Colors.white))),
              TextButton(
                  onPressed: () {},
                  child: Text('Offers', style: TextStyle(color: Colors.white))),
              TextButton(
                  onPressed: () {},
                  child:
                      Text('GiftCards', style: TextStyle(color: Colors.white))),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
