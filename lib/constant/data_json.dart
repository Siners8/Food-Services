const List food_categories = ["Salads", "Soups", "Grilled"];
const List featuredProducts = [
  {
    "CATEGORY": "PAV BHAJI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://upload.wikimedia.org/wikipedia/commons/6/63/Pav_Bhaji.jpg",
    "NAME": "PAV BHAJI",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "20",
    "RESTAURANT ": "PRINCE",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PIZZA",
    "DESCRIPTION": "DASDASCA",
    "FEATURED": "true",
    "ID": "aoBDDenOjb1ebiCwxyQS",
    "IMAGE": "https://www.qsrmagazine.com/sites/default/files/styles/story_page/public/phut_0.jpg?itok=h30EAnkk",
    "NAME": "PIZZA",
    "PRICE": "20",
    "RATES": "20",
    "RATING": "20",
    "RESTAURANT": "Honest",
    "RESTAURANT_ID": "MANNprA78DrdzXJ9gE1H",
    "USER_LIKES": "12"
  },
  {
    "CATEGORY": "BURGER",
    "DESCRIPTION": "DELICIOUS BURGERS",
    "FEATURED": "true",
    "ID ": "jNHtVO5Y3WbtPhtAbdHP",
    "IMAGE": "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p-2870431.jpg",
    "NAME": "BURGER",
    "PRICE": "250",
    "RATES": "10",
    "RATING": "20",
    "RESTAURANT": "BURGER KING",
    "RESTAURANT_ID ": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "20"
  },
  {
    "CATEGORY": "SALAD",
    "DESCRIPTION": "SOUR",
    "FEATURED": "true",
    "ID ": "pMDASl9oENN87kLWq5zH",
    "IMAGE": "https://www.acouplecooks.com/wp-content/uploads/2020/02/Mexican-Salad-005.jpg",
    "NAME": "SALAD",
    "PRICE": "14",
    "RATES": "20",
    "RATING ": "18",
    "RESTAURANT": "SALAD STORE",
    "RESTAURANT_ID": "zeGGDRETzQlzeCq7Y5pC",
    "USER_LIKES": "16"
  },
  {
    "CATEGORY": "NOODLES",
    "DESCRIPTION": "CHINESE",
    "FEATURED": "true",
    "ID": "PL3bHIWXAvP56FAhrIPC",
    "IMAGE": "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/24124f6a6e3748389d2551b4364214e9/BFV12924_EasyNoodles4Ways-FB1080SQ.jpg",
    "NAME": "NOODLES",
    "PRICE ": "200",
    "RATES": "10",
    "RATING": "10",
    "RESTAURANT": "THE NOODLE SHOP",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "        ": "10"
  },
  {
    "CATEGORY": "SABZI",
    "FEATURED": "true",
    "DESCRIPTION": "CHINESE",
    "ID": "GFkYkCDhBk7WGO7FPaBK",
    "IMAGE": "https://www.easycookingwithmolly.com/wp-content/uploads/2018/03/paneer-tikka-masala-recipe-10.jpg",
    "NAME": "PANEER TIKKA BUTTER MASALA",
    "PRICE": "380",
    "RATES": "12",
    "RATING": "17",
    "RESTAURANT": "PUNJABI THAL",
    "RESTAURANT_ID": "ZeClBzkZ6uiJ4fM30elK",
    "USER_LIKES": "17"
  },
  {
    "CATEGORY": "SABZI",
    "FEATURED": "true",
    "DESCRIPTION": "CHINESE",
    "ID": "yX6KqLIVtCWtEvT4YgOB",
    "IMAGE": "https://www.whiskaffair.com/wp-content/uploads/2020/06/Dal-Makhani-2-3.jpg",
    "NAME": "DAL MAKHNI",
    "PRICE": "280",
    "RATES": "15",
    "RATING ": "20",
    "RESTAURANT": "PUNJABI THAL",
    "RESTAURANT_ID": "ZeClBzkZ6uiJ4fM30elK",
    "USER_LIKES": "20"
  },
  {
    "CATEGORY": "ALOO CHAT",
    "DESCRIPTION ": "ALOO AND CHAT",
    "FEATURED": "true",
    "ID": "qg177RJBOd4TZmeG1KGe",
    "IMAGE": "https://www.indianhealthyrecipes.com/wp-content/uploads/2018/07/aloo-chaat-recipe.jpg",
    "NAME": "ALOO CHAT",
    "PRICE": "60",
    "RATES": "40",
    "RATING": "30",
    "RESTAURANT": "JAY BHAVANI",
    "RESTAURANT_ID": "MANNprA78DrdzXJ9gE1H",
    "USER_LIKES": "15"
  },
  {
    "CATEGORY": "MASALA CONE",
    "DESCRIPTION": "CONE WITH MASALA",
    "FEATURED ": "true",
    "ID ": "37LInu7nNy4mRA125KQq",
    "IMAGE": "https://scontent.famd4-1.fna.fbcdn.net/v/t1.6435-9/143446811_210951550752859_2689458220641559743_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=a26aad&_nc_ohc=gZ3ZQ5N16jQAX9cKllw&_nc_ht=scontent.famd4-1.fna&oh=5a7661b3acae96237cb67d7b42bce22a&oe=60C7B8CF",
    "NAME": "MASALA CONE",
    "PRICE": "30",
    "RATES": "20",
    "RATING": "35",
    "RESTAURANT": "JAY BHAVANI",
    "RESTAURANT_ID": "MANNprA78DrdzXJ9gE1H",
    "USER_LIKES": "34"
  }
];
const List restaurantData = [
  {
    "CATEGORY": "MASALA CONE",
    "DESCRIPTION": "CONE WITH MASALA",
    "FEATURED ": "true",
    "ID ": "37LInu7nNy4mRA125KQq",
    "IMAGE": "https://b.zmtcdn.com/data/pictures/2/19246482/b81031fef75477dadbad5a0f6ae14335.jpg?fit=around|300:273&crop=300:273;*,*",
    "NAME": "MASALA CONE",
    "LOCATION":"210, Circle D Complex, near Auda Garden, Anandand Nagar, Ahmedabad, Gujarat 380015",
    "PRICE": "30",
    "RATES": "20",
    "RATING": "3.1/5",
    "RESTAURANT": "JAZZ CLUB",
    "RESTAURANT_ID": "MANNprA78DrdzXJ9gE1H",
    "USER_LIKES": "34"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://b.zmtcdn.com/data/pictures/9/18635829/93a8fde50c98971dad0e8915800e42b8.jpg",
    "LOCATION":"Sundar Nagar Cross road, Ankur Rd, Naranpura, Ahmedabad, Gujarat 380013",
    "NAME": "PAV BHAJI",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "4.5/5",
    "RESTAURANT": "THE GRAND THAKAR",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://b.zmtcdn.com/data/pictures/9/18574839/0aba30f05136b1d4ce002d8c9d159e16.jpg",
    "LOCATION":"Sundar Nagar Cross road, Ankur Rd, Naranpura, Ahmedabad, Gujarat 380013",
    "NAME": "PAV BHAJI",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "4.5/5",
    "RESTAURANT": "PRINCE",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn6tK284oicG_6o_KwPCtsJBHET1xQz6VS9g&usqp=CAU",
    "NAME": "PAV BHAJI",
    "LOCATION":"305, 1st Floor, Rajwadi Complex, near Shantigram Garden, Ghuma, Ahmedabad, Gujarat 380015",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "2.5/5",
    "RESTAURANT": "MARUTI NANDAN",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://content3.jdmagicbox.com/comp/vadodara/p5/0265px265.x265.171016120145.d8p5/catalogue/the-cafe-baraco-alkapuri-vadodara-restaurants-0bmunudkyd.jpg",
    "LOCATION":"Sundar Nagar Cross road, Ankur Rd, Naranpura, Ahmedabad, Gujarat 380013",
    "NAME": "PAV BHAJI",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "4.5/5",
    "RESTAURANT": "THE LILTZ",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://www.cityshor.com/uploads/article/07_2020/1595658388_IMG_20200721_192610.jpg",
    "NAME": "PAV BHAJI",
    "LOCATION":"201, 2nd Floor, Circle P Complex, near Auda Garden, Prahlad Nagar, Ahmedabad, Gujarat 380015",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "3.5/5",
    "RESTAURANT": "TITE DA DHABA",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjnZfh78AQcU65nfV0o0FOJRIP3uiji2zojw&usqp=CAU",
    "LOCATION":"Arambh Nagar Cross road, Amabar Rd, Naranpura, Ahmedabad, Gujarat 380013",
    "NAME": "PAV BHAJI",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "4.5/5",
    "RESTAURANT": "KABIR",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnKn77BaHbUC690Cnxfh2_hB0vBmKZQkDdcw&usqp=CAU",
    "NAME": "PAV BHAJI",
    "LOCATION":"201, 2nd Floor, Circle P Complex, near Auda Garden, Prahlad Nagar, Ahmedabad, Gujarat 380015",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "3.5/5",
    "RESTAURANT": "SHIVAM",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },
  {
    "CATEGORY": "PUNJABI",
    "DESCRIPTION": "BUTTER/OIL",
    "FEATURED": "true",
    "ID": "LMVfI8PTBWBBfebE2pBe",
    "IMAGE": "https://b.zmtcdn.com/data/pictures/5/110505/d6a862caf4db127ca535261c35c9a85e.jpg?fit=around|300:273&crop=300:273;*,*",
    "NAME": "PAV BHAJI",
    "LOCATION":"305, 1st Floor, Rajwadi Complex, near Shantigram Garden, Ghuma, Ahmedabad, Gujarat 380015",
    "PRICE": "190",
    "RATES": "30",
    "RATING": "2.5/5",
    "RESTAURANT": "JASSI DE PARATHE",
    "RESTAURANT_ID": "J2xm3wCwoZ4q9OsAqzT1",
    "USER_LIKES": "6"
  },

  {
    "CATEGORY": "MASALA CONE",
    "DESCRIPTION": "CONE WITH MASALA",
    "FEATURED ": "true",
    "ID ": "37LInu7nNy4mRA125KQq",
    "IMAGE": "https://static.toiimg.com/thumb/msid-46877308,width-800,height-600,resizemode-75/46877308.jpg",
    "NAME": "MASALA CONE",
    "LOCATION":"208, Circle D Complex, near Auda Garden, Anandand Nagar, Ahmedabad, Gujarat 380015",
    "PRICE": "30",
    "RATES": "20",
    "RATING": "4.0/5",
    "RESTAURANT": "JAY BHAVANI",
    "RESTAURANT_ID": "MANNprA78DrdzXJ9gE1H",
    "USER_LIKES": "34"
  }
];
const List food_data_section_one = [
  {
    'id': "1",
    'name': "Chicken Salad",
    "description": "Chicken with avocado",
    'price': "\$ 32.00",
    "img": "assets/images/salad_1.png",
    "img_mul": [
      "assets/images/salad_1.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "1",
    'name': "Chicken Salad",
    "description": "Chicken with avocado",
    'price': "\$ 32.00",
    "img": "assets/images/salad_1.png",
    "img_mul": [
      "assets/images/salad_1.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "1",
    'name': "Chicken Salad",
    "description": "Chicken with avocado",
    'price': "\$ 32.00",
    "img": "assets/images/salad_1.png",
    "img_mul": [
      "assets/images/salad_1.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "1",
    'name': "Chicken Salad",
    "description": "Chicken with avocado",
    'price': "\$ 32.00",
    "img": "assets/images/salad_1.png",
    "img_mul": [
      "assets/images/salad_1.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "1",
    'name': "Chicken Salad",
    "description": "Chicken with avocado",
    'price': "\$ 32.00",
    "img": "assets/images/salad_1.png",
    "img_mul": [
      "assets/images/salad_1.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  }
];

const List food_data_section_two = [
  {
    'id': "2",
    'name': "Mixed Salad",
    "description": "Mixed Vegetables",
    'price': "\$ 24.00",
    "img": "assets/images/salad_2.png",
    "img_mul": [
      "assets/images/salad_2.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "2",
    'name': "Mixed Salad",
    "description": "Mixed Vegetables",
    'price': "\$ 18.00",
    "img": "assets/images/salad_2.png",
    "img_mul": [
      "assets/images/salad_2.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "2",
    'name': "Mixed Salad",
    "description": "Mixed Vegetables",
    'price': "\$ 78.00",
    "img": "assets/images/salad_2.png",
    "img_mul": [
      "assets/images/salad_2.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "2",
    'name': "Mixed Salad",
    "description": "Mixed Vegetables",
    'price': "\$ 36.00",
    "img": "assets/images/salad_2.png",
    "img_mul": [
      "assets/images/salad_2.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  },
  {
    'id': "3",
    'name': "Quinoa Salad",
    "description": "Spicy with garlic",
    'price': "\$ 12.00",
    "img": "assets/images/salad_3.png",
    "img_mul": [
      "assets/images/salad_3.png",
      "assets/images/salad_4.png",
      "assets/images/salad_5.png",
    ]
  }
];
