# HMStringIterator

## Iterator

```obj-c
HMStringIterator* iterator = [HMStringIterator alloc] initWithString:@"abc"];
while(!iterator.isEnd) {
  [iterator nextCharacter];
  unichar ch = iterator.character; // abc
}
```

## ReverseIterator


```obj-c
HMStringReverseIterator* iterator = [HMStringReverseIterator alloc] initWithString:@"abc"];
while(!iterator.isEnd) {
  [iterator nextCharacter];
  unichar ch = iterator.character; // cba
}
```
