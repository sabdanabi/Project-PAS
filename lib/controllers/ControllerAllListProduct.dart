import 'package:get/get.dart';
import '../models/AllProductResponseModel.dart';
import 'package:http/http.dart' as http;

class ControllerAllListProduct extends GetxController {
  RxList<AllProductResponseModel> listmodelCtr = <AllProductResponseModel>[].obs;
  RxList<AllProductResponseModel> allProductResponseModelCtr = <AllProductResponseModel>[].obs;

  @override
  void onInit(){
    super.onInit();
    loadData();
  }

  void loadData() async {

    try{
      final response =
      await http.get(Uri.parse("https://fakestoreapi.com/products"));

      if(response.statusCode == 200){
        //mengisi data allProductResponseModelCtr dengan hasil json dari model
        allProductResponseModelCtr.value = allProductResponseModelFromJson(response.body);
        listmodelCtr.assignAll(allProductResponseModelCtr);
        print("Product ${allProductResponseModelCtr.value.length}");
      }else{
        print("Status code : " + response.statusCode.toString());
      }
    }catch(e){
      print("error : " +e.toString());
    }
  }

  void filterProductsByCategory(Category category){
    print("Filtering by category: $category");
    allProductResponseModelCtr.assignAll(listmodelCtr.where((product) => product.category == category));
    print("Filtered Product count: ${allProductResponseModelCtr.length}");
  }
}
