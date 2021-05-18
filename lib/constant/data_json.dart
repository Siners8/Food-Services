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
