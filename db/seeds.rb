User.create!([
  {name: "Eno", email: "Eno@eno", password_digest: "$2a$12$sRJKxJhymaltm.v9LdkcueESuOqjJS/r2ATH2Z.iME5Jt.oBSOrmy", admin: false},
  {name: "Jens", email: "Jens@jens.com", password_digest: "$2a$12$4mSIChKPY5M5vMBsb97ZKOlFaTdKSPHQLiKMM9OzozACt0LheqtX2", admin: false},
  {name: nil, email: "Eno@eno.com", password_digest: "$2a$12$A4Ql115OomphfnRIeIDvcuojyDf6WRhwHoSuaxzL0.Om/21iya5Pu", admin: true},
  {name: "Tina", email: "Tina@tina.com", password_digest: "$2a$12$FHyUYjyPCVLf/6tTHpPpAex4o9bXaeHjvy/XHmVVsmrpfyZJmEmdK", admin: false},
  {name: "Me", email: "Me@me.com", password_digest: "$2a$12$phzmuvuBT6GvSKyoPk4RcO/PHfHADbSc9OJEEK9EjpmjKPT63Bt8.", admin: true}
])
Supplier.create!([
  {name: "ACME Co.", email: "acmeco@acmeco.com", phone_number: "1234567890"},
  {name: "Food N' Stuff", email: "fns@afns.com", phone_number: "0987654321"}
])
Product.create!([
  {name: "Hot Dog", price: "1.0", description: "Fits the bun", inventory: 10, supplier_id: 2},
  {name: "Yoga Mat", price: "45.0", description: "yoga-ish", inventory: 10, supplier_id: 1},
  {name: "Black Coffee", price: "2.0", description: "full throttle", inventory: 10, supplier_id: 2},
  {name: "Pacer", price: "2345.0", description: "Reliable, seats four singing 'Bohemian Rhapsody'", inventory: 1, supplier_id: 1},
  {name: "Bubble Gum", price: "1.0", description: "Chewy", inventory: 10, supplier_id: 2},
  {name: "Pathos", price: "15.0", description: "Well mannered, easy to care for", inventory: 10, supplier_id: 1},
  {name: "Pickle", price: "1.5", description: "green", inventory: 10, supplier_id: 2},
  {name: "Rubber Chicken", price: "12.0", description: "rubbery", inventory: 10, supplier_id: 1},
  {name: "Haiku", price: "5.0", description: "Made to order", inventory: 1000000001, supplier_id: 1},
  {name: "Banana Hat", price: "3.5", description: "Keep your bananas fresher, and cuter, longer", inventory: 10, supplier_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: "1.0", tax: "10.0", total: "1.1"},
  {user_id: 4, subtotal: "1.0", tax: "10.0", total: "1.1"},
  {user_id: 4, subtotal: "1.0", tax: "10.0", total: "1.1"},
  {user_id: 4, subtotal: "1.0", tax: nil, total: "1.0"},
  {user_id: 4, subtotal: "1.0", tax: nil, total: "1.0"},
  {user_id: 4, subtotal: "1.0", tax: "0.1", total: "1.0"},
  {user_id: 4, subtotal: "1.0", tax: "0.1", total: "1.0"},
  {user_id: 4, subtotal: "1.0", tax: "0.09", total: "1.0"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.0"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.0"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.0"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.0"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.18"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.18"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.18"},
  {user_id: 4, subtotal: "2.0", tax: "0.18", total: "2.18"},
  {user_id: 5, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 3, subtotal: "6.0", tax: "0.54", total: "6.54"},
  {user_id: 3, subtotal: "6.0", tax: "0.54", total: "6.54"}
])
Image.create!([
  {url: "https://media.cnn.com/api/v1/images/stellar/prod/181003190618-costco-hot-dog.jpg?q=w_4032,h_2268,x_0,y_0,c_fill", product_id: "2"},
  {url: "https://images.vat19.com/pickle-soda/pickle-soda-pop-drinking.jpg", product_id: "4"},
  {url: "https://www.gaiam.com/cdn/shop/products/05-61698_C.jpg?v=1673041556", product_id: "7"},
  {url: "https://www.digitaltrends.com/wp-content/uploads/2016/10/waynes-world-amc-pacer.jpg?fit=720%2C720&p=1", product_id: "1"},
  {url: "https://www.eatingwell.com/thmb/wBKeO_wzc97ngtNFph1c2Y0wHfE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/What-Happens-To-Your-Body-When-You-Drink-Coffee-Every-Day-2000-ead0e982c03b4a50a4e115f145069b8b.jpg", product_id: "6"},
  {url: "https://townsquare.media/site/65/files/2014/03/RS3127_177272954-scr.jpg?w=980&q=75", product_id: "5"},
  {url: "https://images.squarespace-cdn.com/content/v1/54fbb611e4b0d7c1e151d22a/1610072931440-5JZIEFJ96XSX748F10H3/Pothos-Houseplant.jpg?format=1500w", product_id: "3"},
  {url: "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/ivuqkLof8DyY/v0/460x260.jpg", product_id: "1"},
  {url: "https://content.fortune.com/wp-content/uploads/2016/10/msdwawo_ec023_h.jpg", product_id: "1"}
])
CategoryProduct.create!([
  {product_id: 1, category_id: 2},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 4}
])
Category.create!([
  {name: "food"},
  {name: "cars"},
  {name: "novelties"},
  {name: "house plants"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 5, quantity: 1, status: "carted", order_id: nil},
  {user_id: 3, product_id: 5, quantity: 1, status: "purchased", order_id: 19},
  {user_id: 3, product_id: 5, quantity: 1, status: "purchased", order_id: 19},
  {user_id: 3, product_id: 5, quantity: 1, status: "purchased", order_id: 19},
  {user_id: 3, product_id: 11, quantity: 2, status: "purchased", order_id: 19}
])
