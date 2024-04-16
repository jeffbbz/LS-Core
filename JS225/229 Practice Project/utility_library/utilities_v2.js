// const window = global;

(function() {

  let findObjs = function(obj, props) {
    return Object.keys(props).every((key, idx) => {
      return Object.keys(obj).includes(key) && obj[key] === props[key];
    })
  }
  let _ = function(element) {
    let u = {
      first() {
        return element[0];
      },

      last() {
        return element[element.length - 1];
      },

      without(...args) {
        return element.filter(el => !args.includes(el));
      },

      lastIndexOf(value) {
        return element.lastIndexOf(value);
      },

      sample(quantity) {
        let getRandomIdx = function (first, last) {
          return Math.floor(Math.random() * (Math.floor(last) - Math.ceil(first) + 1) + Math.ceil(first));
        }

        if (quantity === undefined) {
          let indexes = Object.keys(element);
          let randIndex = getRandomIdx(indexes[0], indexes[indexes.length - 1]);
          return element[randIndex];
        } else {
          let uniqs = element.filter((el, idx, arr) => arr.indexOf(el) === idx);
          uniqs.length = quantity;
          return uniqs;
        }
      },

      findWhere(props) {
        return element.find(obj => findObjs(obj, props));
      },

      where(props) {
        return element.filter(obj => findObjs(obj, props));
      },

      pluck(key) {
        // With filter and map

        // let matches = element.filter(obj => Object.hasOwn(obj, key));
        // return matches.map(obj => obj[key]);

        // with forEach
        let matches = [];
        element.forEach(obj => {
          if (Object.hasOwn(obj, key)) matches.push(obj[key]);
        })
        return matches;
      },
      keys() {
        let keysArr = [];
        for (const objKey in element) {
          keysArr.push(objKey);
        }
        return keysArr;
      },

      values() {
        let valueArr = [];
        for (const objKey in element) {
          valueArr.push(element[objKey]);
        }
        return valueArr;
      },

      pick(...keys) {
        let newObj = {};
        keys.forEach(key => newObj[key] = element[key]);
        return newObj;
      },

      omit(...keys) {
        // with for..in look iteration over element keys

        // let newObj = {};
        // for (const elKey in element) {
        //   if (!keys.includes(elKey)) newObj[elKey] = element[elKey];
        // }
        //
        // return newObj;

        // with forEach iteration over element keys array
        let newObj = {};
        Object.keys(element).forEach(key => {
          if (!keys.includes(key)) newObj[key] = element[key];
        })

        return newObj
      },

      has(prop) {
        // LS solution:
        // return {}.hasOwnProperty.call(element, prop);

        // Similar to LS Solution:
        // return Object.hasOwnProperty.call(element, prop);

        // with hasOwn:
        return Object.hasOwn(element, prop);

        // without hasOwn
        // return Object.keys(element).includes(prop);
      },
    };

    (["isElement", "isArray", "isObject", "isFunction", "isBoolean", "isString", "isNumber"]).forEach(method => {
      u[method] = () => _[method].call(u, element);
    });

    return u;
  }

  _.extend = function(...objs) {
    // with a for loop:

    // for (let idx = objs.length - 1; idx > 0; idx -= 1) {
    //   Object.keys(objs[idx])
    //         .forEach(key => objs[idx - 1][key] = objs[idx][key]);
    // }
    //
    // return objs[0];

    // with nested for each on a reversed args array:

    objs.reverse().forEach((obj, idx, arr) => {
      if (idx !== arr.length - 1) {
        Object.keys(obj)
              .forEach(key => arr[idx + 1][key] = obj[key]);
      }
    })

    return objs[objs.length - 1];
  }

  _.range = function(start, stop) {
    if (stop) {
      return [...Array(stop).keys()].slice(start);
    } else {
      stop = start;
      return [...Array(stop).keys()];
    }
  }

  _.isElement = function(obj) {
    return obj && obj.nodeType === 1;
  }

  _.isArray = Array.isArray || function(obj) {
    return toString.call(obj) === "[object Array]";
  }

  _.isObject = function(obj) {
    return typeof obj === 'function' || typeof obj === "object" && !!obj;
  }

  _.isFunction = function(obj) {
    return typeof obj === 'function';
  };

  (["Boolean", "String", "Number"]).forEach(method => {
    _["is" + method] = (obj) => toString.call(obj) === `[object ${method}]`;
  });

  //
  // _.isBoolean = function(obj) {
  //   // return typeof obj === 'boolean' || typeof obj.valueOf() === 'boolean';
  //   return toString.call(obj) === '[object Boolean]';
  // }
  //
  // _.isString = function(obj) {
  //   return toString.call(obj) === '[object String]';
  // }
  //
  // _.isNumber = function(obj) {
  //   return toString.call(obj) === '[object Number]';
  // }

  window._ = _;
})();

let old_obj = { foo: "bar" }
let new_obj = _(old_obj).omit("foo");
console.log(new_obj)