import 'dart:async';


void main() {
  print('Start of main');

  prepareShoppingList()
    .then((List<String> shoppingList) {
      print('Received shopping list: $shoppingList');
      return goShopping(shoppingList);
    })
    .then((List<String> updatedShoppingList) {
      print('Updated shopping list after shopping: $updatedShoppingList');
      return cookChickenDish();
    })
    .then((String dish) {
      print('Alexia finished cooking: $dish');
    })
    .catchError((error) {
      print('Error occurred during shopping: $error');
      // Handle error gracefully (e.g., apologize and reorder milk)
      print('Apologizing to Alexia and reordering milk...');
    })
    .whenComplete(() {
      print('Luke returned home. Alexia and Luke enjoy the meal together.');
      print('End of main');
    });
}

// Function representing Alexia preparing a shopping list
Future<List<String>> prepareShoppingList() {
  print('Alexia is preparing the shopping list...');
  return Future.delayed(Duration(seconds: 2), () {
    print('Shopping list prepared by Alexia.');
    return ['Apples', 'Bananas', 'Milk', 'Eggs'];
  });
}

// Function representing Luke going to the market and buying groceries
Future<List<String>> goShopping(List<String> shoppingList) {
  print('Luke is going to the market with the shopping list...');
  return Future.delayed(Duration(seconds: 4), () {
    print('Luke bought the groceries from the market.');
    // Simulate a scenario where Luke forgot to buy milk (introduce an error)
    if (shoppingList.contains('Milk')) {
      shoppingList.remove('Milk');
      throw Exception('Oops! Luke forgot to buy milk.');
    }
    return shoppingList;
  });
}

// Function representing Alexia cooking a chicken dish at home
Future<String> cookChickenDish() {
  print('Alexia is cooking a delicious chicken dish at home...');
  return Future.delayed(Duration(seconds: 3), () {
    print('Chicken dish cooked by Alexia.');
    return 'Roast Chicken';
  });
}