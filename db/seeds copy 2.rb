Supplier.create!([
  {name: "Annoying Toys Inc", email: "orders@antoys.net", phone: nil},
  {name: "Hoverboards Etc", email: "spinners@hovboard.biz", phone: nil}
])
Toy.create!([
  {name: "Gold Spinner", image: "https://goo.gl/WuWtjT", description: "For those expensive tastes", price: 1000000, supplier_id: 1},
  {name: "Bike Spinner", image: "https://goo.gl/olCnOL", description: "Made out of a broken fixie bike", price: 50, supplier_id: 2},
  {name: "Shuriken Spinner", image: "https://goo.gl/StT7Gr", description: "Doubles as a weapon", price: 70, supplier_id: 2},
  {name: "Ball Bearing Spinner", image: "https://goo.gl/PNzszk", description: "More ball bearings for extra spin", price: 30, supplier_id: 2},
  {name: "Gold Spinner", image: "https://goo.gl/WuWtjT", description: "For those expensive tastes", price: 1000000, supplier_id: 1},
  {name: "Bike Spinner", image: "https://goo.gl/olCnOL", description: "Made out of a broken fixie bike", price: 50, supplier_id: 1},
  {name: "Shuriken Spinner", image: "https://goo.gl/StT7Gr", description: "Doubles as a weapon", price: 70, supplier_id: 2},
  {name: "Ball Bearing Spinner", image: "https://goo.gl/PNzszk", description: "More ball bearings for extra spin", price: 30, supplier_id: 1},
  {name: "Gold Spinner", image: "https://goo.gl/WuWtjT", description: "For those expensive tastes", price: 1000000, supplier_id: 2},
  {name: "Bike Spinner", image: "https://goo.gl/olCnOL", description: "Made out of a broken fixie bike", price: 50, supplier_id: 1},
  {name: "Shuriken Spinner", image: "https://goo.gl/StT7Gr", description: "Doubles as a weapon", price: 70, supplier_id: 1},
  {name: "Ball Bearing Spinner", image: "https://goo.gl/PNzszk", description: "More ball bearings for extra spin", price: 30, supplier_id: 1},
  {name: "Gold Spinner", image: "https://goo.gl/WuWtjT", description: "For those expensive tastes", price: 1000000, supplier_id: 2},
  {name: "Bike Spinner", image: "https://goo.gl/olCnOL", description: "Made out of a broken fixie bike", price: 50, supplier_id: 2},
  {name: "Shuriken Spinner", image: "https://goo.gl/StT7Gr", description: "Doubles as a weapon", price: 70, supplier_id: 2},
  {name: "Ball Bearing Spinner", image: "https://goo.gl/PNzszk", description: "More ball bearings for extra spin", price: 30, supplier_id: 2},
  {name: "LED Spinner", image: "https://goo.gl/WuWtjT", description: "For those expensive tastes", price: 1000000, supplier_id: 2},
  {name: "testspin", image: "test", description: "this is a test", price: 10, supplier_id: 2},
  {name: "Ok Spinner", image: "test", description: "This is just ok", price: 5, supplier_id: 2},
  {name: "Ok Spinner", image: "test", description: "This is just ok", price: 5, supplier_id: 2},
  {name: "Ok Spinner", image: "test", description: "This is just ok", price: 5, supplier_id: 1},
  {name: "Ok Spinner", image: "test", description: "This is just ok", price: 5, supplier_id: 1},
  {name: "test toy", image: "testimage", description: "This is a test", price: 1, supplier_id: 1},
  {name: "One More Toy", image: "toy", description: "finaltesttoy", price: 12, supplier_id: 2},
  {name: "asdf", image: "asdf", description: "asdfa", price: 10, supplier_id: 2}
])
