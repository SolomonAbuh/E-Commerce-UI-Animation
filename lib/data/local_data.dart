import 'package:money_point_take_home_assignment/constants/app_assets.dart';

import '../models/product_model.dart';
import '../models/tab_item_model.dart';

List<TabItemModel> tabItems = [
  TabItemModel(AppAssets.categoryIcon, 'Category'),
  TabItemModel(AppAssets.airplaneIcon, 'Flight'),
  TabItemModel(AppAssets.receiptIcon, 'Bill'),
  TabItemModel(AppAssets.earthIcon, 'Data plan'),
  TabItemModel(AppAssets.coinsIcon, 'Top up'),
];

List<ProductModel> productList = [
  ProductModel(
      name: 'KENZO Sailor Varsity Bomber Jacket Midnight Blue Regular Price',
      price: '22.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        AppAssets.navyBlueJacket,
        AppAssets.navyBlueJacketTwo,
        AppAssets.navyBlueJacketThree,
        AppAssets.navyBlueJacketFour,
      ]),
  ProductModel(
      name: 'OFF-WHITE Varsity Hammer Leather Over Bomber Jacket Black/Blue',
      price: '18.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        AppAssets.offWhiteJacket,
        AppAssets.offWhiteJacketTwo,
        AppAssets.offWhiteJacketThree,
        AppAssets.offWhiteJacketFour,
      ]),
  ProductModel(
      name: 'DSQUARED2 Logo Print Padded Jacket Black Regular Price',
      price: '60.00',
      productCategory: 'Jacket',
      rating: '3',
      images: [
        AppAssets.dsquaredJacket,
        AppAssets.dsquaredJacketTwo,
        AppAssets.dsquaredJacketThree,
        AppAssets.dsquaredJacketFour,
      ]),
  ProductModel(
      name: 'PALM ANGELS Upsidedown Palm Sukajan Brown',
      price: '25.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        AppAssets.palmAngelJacket,
        AppAssets.palmAngelJacketTwo,
        AppAssets.palmAngelJacketThree,
        AppAssets.palmAngelJacketFour,
      ]),
  ProductModel(
      name: 'PALM ANGELS Pink Sunset Track Vest Purple/Black',
      price: '30.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        AppAssets.palmAngelPinkJacket,
        AppAssets.palmAngelPinkJacketTwo,
        AppAssets.palmAngelPinkJacketThree,
        AppAssets.palmAngelPinkJacketFour,
      ]),
  ProductModel(
      name: 'STONE ISLAND SHADOW PROJECT Organza Ripstop Bomber Jacket Black',
      price: '30.00',
      productCategory: 'Jacket',
      rating: '5',
      images: [
        AppAssets.stoneSilverJacket,
        AppAssets.stoneSilverJacketTwo,
        AppAssets.stoneSilverJacketThree,
        AppAssets.stoneSilverJacketFour,
      ]),
];

final   List allAsset = [
  ///tabbar
      'images/tabbar/tabar_personal.png',
      'images/tabbar/tabar_personal_slt.png',
      'images/tabbar/tabar_home.png',
      'images/tabbar/tabar_home_slt.png',
      'images/...'
      'images/...'
}