Category.create!([
  {name: "LED"},
  {name: "normal"},
  {name: "golden"},
  {name: "shuriken"}
])

Order.create!([
  {toy_id: 3, user_id: 1, quantity: 2, subtotal: "140.0", tax: "12.6", total: nil},
  {toy_id: 4, user_id: 1, quantity: 2, subtotal: "60.0", tax: "5.4", total: 65},
  {toy_id: 3, user_id: 1, quantity: 5, subtotal: "350.0", tax: "31.5", total: 381},
  {toy_id: 2, user_id: 1, quantity: 2, subtotal: "100.0", tax: "9.0", total: 109},
  {toy_id: 2, user_id: 1, quantity: 2, subtotal: "100.0", tax: "9.0", total: 109},
  {toy_id: 3, user_id: 1, quantity: 2, subtotal: "140.0", tax: "12.6", total: 152},
  {toy_id: 2, user_id: 1, quantity: 2, subtotal: "100.0", tax: "9.0", total: 109}
])
Supplier.create!([
  {name: "Annoying Toys Inc", email: "orders@antoys.net", phone: nil},
  {name: "Hoverboards Etc", email: "spinners@hovboard.biz", phone: nil}
])
Toy.create!([
  {name: "Bike Spinner", description: "Made out of a broken fixie bike", price: 50, supplier_id: 2},
  {name: "Shuriken Spinner", description: "Doubles as a weapon", price: 70, supplier_id: 2},
  {name: "Ball Bearing Spinner", description: "More ball bearings for extra spin", price: 30, supplier_id: 2},
  {name: "Gold Spinner", description: "For those expensive tastes", price: 1000000, supplier_id: 1},
  {name: "LED Spinner", description: "For those expensive tastes", price: 20, supplier_id: 2},
  {name: "Ok Spinner", description: "This is just ok", price: 5, supplier_id: 2},

])
User.create!([
  {name: "Carlos", email: "carlos@spamify.me", password_digest: "$2a$10$wZ97go/kpwRjIt0KPTk9pOVWVKa97B6ffzlFy./7u/PHcbT9ZO3qa"}
])

CategoryToy.create!([
  {category_id: 2, toy_id: 1},
  {category_id: 4, toy_id: 2},
  {category_id: 2, toy_id: 3},
  {category_id: 3, toy_id: 4},
  {category_id: 1, toy_id: 5},
  {category_id: 2, toy_id: 6}
])