const classOptions = {
  Vertebrate: ['Bear', 'Turtle', 'Whale', 'Salmon', 'Ostrich'],
  'Warm-blooded': ['Bear', 'Whale', 'Ostrich'],
  'Cold-blooded': ['Salmon', 'Turtle'],
  Mammal: ['Bear', 'Whale'],
  Bird: ['Ostrich'],
}

const animalOptions = {
  Bear: ['Vertebrate', 'Warm-blooded', 'Mammal'],
  Turtle: ['Vertebrate', 'Cold-blooded'],
  Whale: ['Vertebrate', 'Warm-blooded', 'Mammal'],
  Salmon: ['Vertebrate', 'Cold-blooded'],
  Ostrich: ['Vertebrate', 'Warm-blooded', 'Bird'],
}

document.addEventListener('DOMContentLoaded', () => {
  let classifications = document.querySelector('#animal-classifications');
  let animals = document.querySelector('#animals');

  function hideChoices(cases, choices) {
    let selected;
    resetHidden(choices);

    choices.forEach(choice => {
      if (!cases.includes(choice.value)) {
        choice.hidden = true;
      } else if (!selected) {
        selected = true;
        choice.selected = selected;
      }
    });
  }

  const resetHidden = (choices) => choices.forEach(choice => choice.hidden = false);

  classifications.addEventListener('click', event => {
    hideChoices(classOptions[classifications.value], [...animals.options]);
  });

  animals.addEventListener('click', event => {
    hideChoices(animalOptions[animals.value], [...classifications.options]);
  });
});