### GOAL

create a function that takes four arguments and returns true if an `eventType` argument event listener 
`callback` argument was added to a `parentElement` which delegates to a `selector` argument descendant elements of an `parentElement` argument 
or undefined if not.

### RULES

INPUT: parentElement (HTML element), selector (HTML element type), eventType (event name string), callback (event listener function) 
OUTPUT: True if event listener added / undefined if not
- all event handlers are listening on the default bubbling phase
- delegate events runs before given scenarios
- scenarios are indepenedant of each other
- if parentElement does not exist return undefined

### Scenario 1 - `delegateEvent(element1, 'p', 'click', callback);`
- The function executes and returns undefined.
- It doesn't add an event listener to any elements.