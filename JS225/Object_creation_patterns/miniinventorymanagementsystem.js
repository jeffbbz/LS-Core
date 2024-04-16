const ItemCreator = (function (){
  function invalidProperties(itemName, category, quantity) {
    return invalidItemName(itemName) || invalidCategory(category) || invalidQuantity(quantity);
  }

  function invalidItemName(name) {
    return name.replaceAll(' ', '').length < 5
  }

  function invalidCategory(category) {
    return (category.length < 5 || /\s/.test(category))
  }

  function invalidQuantity(quantity) {
    return quantity === undefined;
  }

  function createSku(name, category) {
    let namePart = name.slice(0, 3);
    let catPart = category.slice(0, 2);

    if (/\s/.test(name) && name.split(' ')[0].length <= 2) {
      namePart = name.slice(0, 2) + name.split(' ')[1][0];
    }

    return (namePart + catPart).toUpperCase();
  }

  return function(itemName, category, quantity) {
    if (invalidProperties(itemName, category, quantity)) {
      return {notValid: true};
    } else {
      this.sku = createSku(itemName, category);
      this.itemName = itemName;
      this.category = category;
      this.quantity = quantity;
    }
  };
})();

const ItemManager = {
  items: [],

  create(itemName, category, quantity) {
    const item = new ItemCreator(itemName, category, quantity);
    if (item.notValid) return false;
    this.items.push(item);
  },

  update(sku, obj) {
    Object.assign(this.findItem(sku), obj);
  },

  findItem(skuValue) {
    return this.items.find(item => item.sku === skuValue);
  },

  delete(sku) {
    let idx = this.items.indexOf(this.findItem(sku))
    this.items.splice(idx, 1);
  },

  inStock() {
    return this.items.filter(item => item.quantity > 0);
  },

  itemsInCategory(category) {
    let matches = this.items.filter(item => item.category === category);
    return matches.map(item => item.itemName).join(", ");
  }
};

const ReportManager = {
  init(itemManagerObj) {
    this.items = itemManagerObj;
  },

  createReporter(sku) {
    let item = this.items.findItem(sku);

    return {
      itemInfo() {
        for (const itemKey in item) {
          console.log(`${itemKey}: ${item[itemKey]}`);
        }
      },
    }
  },

  reportInStock() {
    let stock = this.items.inStock()
                    .map(item => item.itemName)
                    .join(', ');
    console.log(stock);
  },
};

ItemManager.create('basket ball', 'sports', 0);           // valid item
ItemManager.create('asd', 'sports', 0);
ItemManager.create('soccer ball', 'sports', 5);           // valid item
ItemManager.create('football', 'sports');
ItemManager.create('football', 'sports', 3);              // valid item
ItemManager.create('kitchen pot', 'cooking items', 0);
ItemManager.create('kitchen pot', 'cooking', 3);          // valid item

console.log(ItemManager.items);
// returns list with the 4 valid items

ReportManager.init(ItemManager);
ReportManager.reportInStock();
// logs soccer ball,football,kitchen pot

ItemManager.update('SOCSP', { quantity: 0 });
console.log(ItemManager.inStock());
// returns list with the item objects for football and kitchen pot

ReportManager.reportInStock();
// logs football,kitchen pot

console.log(ItemManager.itemsInCategory('sports'));
// returns list with the item objects for basket ball, soccer ball, and football

ItemManager.delete('SOCSP');
console.log(ItemManager.items);
// returns list with the remaining 3 valid items (soccer ball is removed from the list)

const kitchenPotReporter = ReportManager.createReporter('KITCO');
kitchenPotReporter.itemInfo();
// logs
// skuCode: KITCO
// itemName: kitchen pot
// category: cooking
// quantity: 3

ItemManager.update('KITCO', { quantity: 10 });
kitchenPotReporter.itemInfo();
// logs
// skuCode: KITCO
// itemName: kitchen pot
// category: cooking
// quantity: 10