import 'package:pharmacy/models/address_model.dart';
import 'package:pharmacy/models/category_model.dart';
import 'package:pharmacy/models/offers_model.dart';
import 'package:pharmacy/models/prescription_model.dart';
import 'package:pharmacy/models/product_model.dart';
import 'package:pharmacy/models/setting_model.dart';

var getCateryList = categoriesList
    .map<CategoryModel>((e) => CategoryModel.fromJson(e))
    .toList();

var getOffersList = productOffers
    .map<OffersModel>((e) => OffersModel.fromJson(e))
    .toList();

var getProductList = productList
    .map<ProductModel>((e) => ProductModel.fromJson(e))
    .toList();

var getPrescriptionList = prescriptionList
    .map<PrescriptionModel>((e) => PrescriptionModel.fromJson(e))
    .toList();

var getSettingList = profileInfoLIst
    .map<SettingModel>((e) => SettingModel.fromJson(e))
    .toList();

var getAddress = addressList
    .map<AddressModel>((e) => AddressModel.fromJson(e))
    .toList();

var categoriesList = [
  {
    "name": "All Cateroies",
    "icon": "viewgridoutline",
  },
  {
    "name": "Wellness",
    "icon": "doctor",
  },
  {
    "name": "Ayurveda",
    "icon": "foodvariant",
  },
  {
    "name": "Skin Care",
    "icon": "account",
  },
  {
    "name": "Imunity",
    "icon": "armflexoutline",
  },
  {
    "name": "Eqipments",
    "icon": "thermometer",
  },
  {
    "name": "Heart Care",
    "icon": "heartpulse",
  },
  {
    "name": "Ear Care",
    "icon": "eye",
  },
  {
    "name": "Ear Care",
    "icon": "earhearing",
  }
];

var productOffers = [
  {
    "header": "OLD LIFE PLAN",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/offers/offers1.png",    
    "offers": "15% OFF"
  },
  {
    "header": "PENSION PLAN",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/offers/offers2.png",    
    "offers": "10% OFF"
  },
  {
    "header": "RETIREMENT PLAN",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/offers/offers3.png",    
    "offers": "2 Months Free"
  },
    {
    "header": "RETIREMENT PLAN",
    "content":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/offers/offers3.png",    
    "offers": "Money Back Gurantee"
  },
];

var productList = [
  {
    "id" : 1,
    "name": "COMPLAN CHOCOLATE REFILL 500GM",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/products/COMP0024_S.png",    
    "discounts": "15",
    "mrp" : "280",
    "measure" : "500 GM" 
  },
  {
    "id" : 2,
    "name": "ZANDU BALM 25ML",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/products/ZAND0004_S.png",    
    "discounts": "10",
    "mrp" : "70",
    "measure" : "25 ml" 
  },
  {
    "id" : 3,
    "name": "SUGAR FREE NATURA DIET SUGAR POWDER 80GM",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/products/SUGA0036_S.png",    
    "discounts": "15",
    "mrp" : "220",
    "measure" : "80 GM" 
  },
    {
      "id" : 4,
    "name": "HORLICKS JUNIOR REFILL 500 GM",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/products/HORL0013_S.png",    
    "discounts": "20",
    "mrp" : "230",
    "measure" : "500 GM" 
  },
];

var profileInfoLIst = [
  { 
    "type":"orders",
    "icon" : "",
    "title":"My Orders"
  },
  { 
    "type":"wishlist",
    "icon" : "",
    "title":"Wishlist"
  },
   { 
    "type":"prescription",
    "icon" : "",
    "title":"My Prescription"
  }, { 
    "type":"payment_method",
    "icon" : "",
    "title":"Payment Methods"
  }, { 
    "type":"address",
    "icon" : "",
    "title":"Your Addresses"
  }, /* { 
    "type":"history",
    "icon" : "",
    "title":"Payment Methods"
  }, */ { 
    "type":"invites",
    "icon" : "",
    "title":"Invites Friends"
  }, { 
    "type":"password",
    "icon" : "",
    "title":"Change Password"
  }, 
  { 
    "type":"logout",
    "icon" : "",
    "title":"Log Out"
  },
    { 
    "type":"banner",
    "icon" : "",
    "title":"banner"
  },
  
];

var prescriptionList = [
  {
    "title": "Uploaded",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/prescription/prescription1.jpg",    
    "date": "01:08:2020",
    "time":"03:00",
    "status" : 0, 
  },
  {
    "title": "Uploaded",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/prescription/prescription2.jpg",    
    "date": "02:08:2020",
    "time":"05:30",
    "status" : 0 
  },
  {
    "title": "Uploaded",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/prescription/prescription3.jpg",    
    "date": "03:08:2020",
    "time":"08:25",
    "status" : 1
  },
    {
    "title": "Uploaded",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/prescription/prescription4.jpg",    
    "date": "01:08:2020",
    "time":"01:30",
    "status" : 2
  },
    {
    "title": "Uploaded",
    "descritpion":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,",
    "image": "assets/images/prescription/prescription5.jpg",    
    "date": "02:08:2020",
    "time":"18:15",
    "status" : 2
  },
];

var onBoard = [
  {
    "title" : "View & Buy Medicine online",
    "description":"Pharmacy App is complete online Medical store & Health app for all your medical needs."
  },{
    "title" : "Online Medical & Healthcare",
    "description":"Pharmacy app is a complete health app for all your medical needs, Book Lab Tests & Health check-ups, and Consult Online"
  }
];

var addressList = [
    {
        "id": 0,
        "guid": "aaeaa14e-b27e-4f2b-bd35-587743e63a47",
        "isActive": true,
        "name": "Shelia Bolton",
        "phone": "+91 (861) 511-2222",
        "address": "958 Fair Street, Machias, Alabama, 4878",
        "latitude": "19.065525",
        "longitude": "162.001054"
    },
    {
        "id": 1,
        "guid": "3996f6d0-0639-4cc8-9be5-fbd16fc00eb1",
        "isActive": false,
        "name": "Sonya Horton",
        "phone": "+91 (999) 472-3203",
        "address": "459 Frost Street, Nettie, Idaho, 3094",
        "latitude": "18.531547",
        "longitude": "-38.868039"
    },
    {
        "id": 2,
        "guid": "acca83e7-4df9-4d08-8d7c-ff964abbfa32",
        "isActive": true,
        "name": "Peggy Boyd",
        "phone": "+91 (934) 412-2083",
        "address": "441 Kent Street, Libertytown, Louisiana, 2611",
        "latitude": "74.811337",
        "longitude": "7.504084"
    },
    {
        "id": 3,
        "guid": "1d4d9fbe-1efd-4790-a754-3a97a2ab808d",
        "isActive": true,
        "name": "Lee Terry",
        "phone": "+91 (904) 435-3163",
        "address": "583 Concord Street, Brambleton, Virginia, 7113",
        "latitude": "-85.084138",
        "longitude": "-169.507271"
    },
    {
        "id": 4,
        "guid": "d5106255-2478-4ad5-aafa-ca89519f48f5",
        "isActive": true,
        "name": "Mullins Davis",
        "phone": "+91 (855) 495-3542",
        "address": "755 Ovington Court, Jeff, American Samoa, 9041",
        "latitude": "6.87188",
        "longitude": "93.327737"
    },
    {
        "id": 5,
        "guid": "fc9b7fb5-035a-477d-ac1a-8215dc797838",
        "isActive": false,
        "name": "Sandra Nunez",
        "phone": "+91 (899) 406-3472",
        "address": "965 Butler Street, Fillmore, Michigan, 4477",
        "latitude": "-53.02995",
        "longitude": "-164.817916"
    },
    {
        "id": 6,
        "guid": "5943adad-373f-4896-8315-5d40038555c2",
        "isActive": false,
        "name": "Hensley Ingram",
        "phone": "+91 (828) 570-3289",
        "address": "371 Fanchon Place, Warsaw, Texas, 6377",
        "latitude": "57.113918",
        "longitude": "-21.412408"
    },
    {
        "id": 7,
        "guid": "bc89fc8c-5dc5-4223-a367-656904807830",
        "isActive": false,
        "name": "Peck York",
        "phone": "+91 (828) 508-2204",
        "address": "883 Green Street, Northridge, Maryland, 3749",
        "latitude": "-1.48897",
        "longitude": "11.615881"
    },
    {
        "id": 8,
        "guid": "36fa8fff-6579-4b0c-922e-7e52c9f808b0",
        "isActive": false,
        "name": "Richards Simon",
        "phone": "+91 (922) 434-2115",
        "address": "535 Hinsdale Street, Cucumber, Oregon, 5594",
        "latitude": "-77.269358",
        "longitude": "-4.700691"
    },
    {
        "id": 9,
        "guid": "ca5b57e5-49be-4c5e-b876-0e08279b6f80",
        "isActive": false,
        "name": "Carrillo Bowen",
        "phone": "+91 (956) 494-2294",
        "address": "274 Hart Street, Marbury, Missouri, 7278",
        "latitude": "-6.366255",
        "longitude": "-155.813356"
    },
    {
        "id": 10,
        "guid": "b9938db3-1f0f-42da-8693-df2a9439d2dd",
        "isActive": false,
        "name": "Church Haley",
        "phone": "+91 (914) 404-2769",
        "address": "114 Plymouth Street, Talpa, Delaware, 9918",
        "latitude": "-86.63926",
        "longitude": "-25.16154"
    },
    {
        "id": 11,
        "guid": "13601702-4f23-4209-813f-e63931086161",
        "isActive": false,
        "name": "Meadows Mcleod",
        "phone": "+91 (890) 550-2446",
        "address": "852 Troutman Street, Crawfordsville, Minnesota, 6610",
        "latitude": "-24.243382",
        "longitude": "137.224263"
    },
    {
        "id": 12,
        "guid": "7e772e01-4531-4535-a6c7-d6cbb29e9f97",
        "isActive": true,
        "name": "Alberta Green",
        "phone": "+91 (878) 555-2417",
        "address": "908 Karweg Place, Aguila, North Dakota, 2828",
        "latitude": "69.52701",
        "longitude": "114.168251"
    },
    {
        "id": 13,
        "guid": "f8f51f1a-3f86-4627-a11a-f222906a746b",
        "isActive": true,
        "name": "Carey Bryan",
        "phone": "+91 (937) 426-2279",
        "address": "862 Rockwell Place, Vallonia, Vermont, 1296",
        "latitude": "-74.725799",
        "longitude": "-64.465845"
    },
    {
        "id": 14,
        "guid": "0f51fd4f-510f-4dc4-8270-4c33c43351b9",
        "isActive": false,
        "name": "Sue Freeman",
        "phone": "+91 (843) 503-3856",
        "address": "936 Story Street, Greensburg, Massachusetts, 6579",
        "latitude": "-34.883988",
        "longitude": "-80.178026"
    },
    {
        "id": 15,
        "guid": "5db2b029-47a7-4543-b022-82f209c85b8c",
        "isActive": true,
        "name": "Gibbs Carlson",
        "phone": "+91 (931) 508-3079",
        "address": "225 Brooklyn Avenue, Rote, Indiana, 7015",
        "latitude": "-77.528298",
        "longitude": "-125.319406"
    },
    {
        "id": 16,
        "guid": "8fada7b0-29db-4ec0-ade5-889aeff0c29e",
        "isActive": true,
        "name": "Beasley Benjamin",
        "phone": "+91 (898) 538-3933",
        "address": "143 Roder Avenue, Dola, Marshall Islands, 4283",
        "latitude": "-65.540642",
        "longitude": "-172.106457"
    },
    {
        "id": 17,
        "guid": "e2fdbc27-1590-47f2-936d-32bec8cdb8bf",
        "isActive": false,
        "name": "Navarro Hunter",
        "phone": "+91 (808) 501-2928",
        "address": "621 Hazel Court, Chemung, Virgin Islands, 7176",
        "latitude": "-77.930832",
        "longitude": "-16.421896"
    },
    {
        "id": 18,
        "guid": "cad7996b-f0ed-4f76-aaf1-cd89a5556afa",
        "isActive": false,
        "name": "Karen Dotson",
        "phone": "+91 (973) 535-2658",
        "address": "150 Williamsburg Street, Bethany, Arkansas, 8356",
        "latitude": "-30.896805",
        "longitude": "120.621142"
    },
    {
        "id": 19,
        "guid": "a03c0d55-1fca-45f7-88fd-232e64066645",
        "isActive": false,
        "name": "Juarez Cantu",
        "phone": "+91 (884) 591-2361",
        "address": "260 Ashford Street, Robinette, Rhode Island, 7633",
        "latitude": "-24.706391",
        "longitude": "-178.074587"
    }
];
