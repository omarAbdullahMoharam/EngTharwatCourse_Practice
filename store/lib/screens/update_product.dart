import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/models/product_model.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_snackbar.dart';
import 'package:store/widgets/custom_textField.dart';

import '../services/update_product.dart';

// ignore: must_be_immutable
class UpdateProduct extends StatefulWidget {
  const UpdateProduct({super.key});
  static String updateProductID = 'UpdateProduct';

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  bool isLoading = false;
  String? productName, desc, image;
  String? price;
  // double? ;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              CustomTextField(
                prefix: 'Title    ',
                hintText: 'Product Name',
                onChanged: (value) => productName = value,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                prefix: 'Details',
                hintText: 'Description',
                onChanged: (value) => desc,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                prefix: 'Price   ',
                hintText: 'Price',
                inputType: const TextInputType.numberWithOptions(),
                onChanged: (value) {
                  log('old price : $price');
                  log(value);
                  price = value;
                  log('updated price : pVar $price & pVal $value ');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                prefix: 'Image ',
                hintText: 'image',
                onChanged: (value) => image = value,
              ),
              const Spacer(),
              CustomButton(
                label: 'Update',
                onPressed: () async {
                  isLoading = true;
                  setState(() {});
                  await update(product);

                  try {
                    showSnackBar(
                      // ignore: use_build_context_synchronously
                      context: context,
                      textEXC: 'Success',
                      icon: Icons.check_circle,
                      color: Colors.green,
                    );
                    log('Success');
                  } catch (e) {
                    showSnackBar(
                        // ignore: use_build_context_synchronously
                        context: context,
                        textEXC: 'Failed,An Error Happend',
                        icon: Icons.error,
                        color: Colors.red);
                    log(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Future<void> update(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: productName ?? product.title,
      price: price == null ? product.price.toString() : price!,
      description: desc ?? product.description,
      image: image ?? product.image,
      category: product.category,
    );
  }
  //   Future<void> updateProduct(ProductModel product) async {
  //   await UpdateProductService().updateProduct(
  //       id: product.id,
  //       title: productName == null ? product.title : productName!,
  //       price: price == null ? product.price.toString() : price!,
  //       desc: desc == null ? product.description : desc!,
  //       image: image == null ? product.image : image!,
  //       category: product.category);
  // }
}
