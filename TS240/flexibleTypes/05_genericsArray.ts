function filterByType<T>(array: any[], type: string): T[] {
  return array.filter(el => typeof el === type);
}

console.log(filterByType<string>(["hello", "world", 42, true], "string")); // ["hello", "world"]