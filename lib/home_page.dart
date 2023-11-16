import 'package:flutter/material.dart';
import 'package:module_07/cart_page.dart';
import 'package:module_07/product_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Product> productList = Product.productList;
  List<int> countAdditions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text('Product List', style: AppBarTheme.of(context).titleTextStyle),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: ListView.separated(
              itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productList[index].name,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            productList[index].price.toString(),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Count: ${productList[index].count.toString()}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          ElevatedButton(
                              onPressed: () => onBuyNowTap(index),
                              child: Text('Buy Now'))
                        ],
                      )
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: productList.length)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(count: countAdditions.length),
              ));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }

  void onBuyNowTap(int index) {
    int countAddition = 0;
    if (productList[index].count < 5) {
      countAddition = 1;
      productList[index].count++;
      if(productList[index].count==5){
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Product Limit Reached'),
            content: Text(
                'The count of ${productList[index].name} has reached the limit of 5.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }
    countAdditions.add(countAddition);
    setState(() {});
  }

}
