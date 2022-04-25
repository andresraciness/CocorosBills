import 'package:flutter/material.dart';

class TextInputSearch extends StatelessWidget {
  const TextInputSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search...',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        onChanged: (String value) {},
      ),
    );
  }
}


  // Container(
            //   margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            //   decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: Colors.grey.shade100,
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.withOpacity(0.3),
            //           spreadRadius: 1,
            //           blurRadius: 7,
            //           offset: const Offset(4, 6), // changes position of shadow
            //         ),
            //       ]),
            //   child: IconButton(
            //     icon: const Icon(Icons.shopping_cart_outlined),
            //     iconSize: 23.0,
            //     color: Colors.black,
            //     onPressed: () {},
            //   ),
            // )


    // ElevatedButton(
                //   onPressed: () async =>
                //       await context.read<AuthenticationService>().logOut(),
                //   child: const Text("Cerrar Sesion"),
                // )