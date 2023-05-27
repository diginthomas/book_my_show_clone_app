import 'package:book_my_show_clone/constants/contants.dart';
import 'package:flutter/material.dart';

const Widget space = SizedBox(
  width: 20,
);

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      height: MediaQuery.of(context).size.height / 13.5,
      color: const Color(0xff333545),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 5,
              ),
              Container(
                padding: EdgeInsets.all(6),
                height: MediaQuery.of(context).size.width / 3,
                child: Image.asset(
                  logoImage,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Kochi",
                style: TextStyle(color: Colors.white60),
              ),
              space,
              ElevatedButton(
                onPressed: () => {},
                child: Text('Sign in'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xffF84464)),
                ),
              ),
              space,
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
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
