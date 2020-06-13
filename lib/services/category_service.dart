import 'package:fluttertodolistapp/models/category.dart';
import 'package:fluttertodolistapp/repositories/repository.dart';

class CategoryService{
  Repository _repository;
 CategoryService() {
   _repository = Repository();
 }
  saveCategory(Category category) async{
    return await _repository.insertData('categories', category.categoryMap());
  }
  readCategories() async{
   _repository.readData('categories');
   return await _repository.readData('categories');
  }

  readCategoryById(categoryId) async{
   return await _repository.readDataById('categories',categoryId);
  }

  updateCategory(Category category) async{
   return await _repository.updateData('categories',category.categoryMap());
  }

  deleteCategory(categoryId) async {
   return await _repository.deleteData('categories',categoryId);
  }
}