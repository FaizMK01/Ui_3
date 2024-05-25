import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ViewThree extends StatelessWidget {
  const ViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find Your',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      'Inspiration',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search you're looking for",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Promo Today', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    image('images/1.jpg'),
                    image('images/2.jpg'),
                    image('images/3.jpg'),
                    image('images/4.jpg'),
          
          
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200,
                  width: 380,
          
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage('images/5.jpeg'))
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
  Widget image(image){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 150,
        width: 180,

        decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(image)),

          borderRadius: BorderRadius.circular(15),


        ),

      ),
    );
  }
}
