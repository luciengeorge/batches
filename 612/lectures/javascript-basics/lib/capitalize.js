const capitalize = (word) => {
  const firstLetter = word[0].toUpperCase();
  const restOfWord = word.substring(1).toLowerCase();
  const capitalizedWord = `${firstLetter}${restOfWord}`;
  // const capitalizedWord = firstLetter + restOfWord;
  return capitalizedWord;
};

console.log(capitalize('sTockHolm'));
