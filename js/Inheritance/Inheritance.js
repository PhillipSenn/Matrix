var ParentObject = {};
ParentObject.x = 1;

var InheritedObject = Object.create(ParentObject);
console.log(InheritedObject); // {x:1}
InheritedObject.x = 2;
console.log(InheritedObject); // {x:2, x:1}
console.log(InheritedObject.x); // 2
console.log(InheritedObject.__proto__.x); // 1
ParentObject.y = 3;
console.log(InheritedObject); // {x: 2, x: 1, y: 3} 
