# HMStringIterator

[![Build Status](https://travis-ci.org/hmuronaka/HMStringIterator.svg)](https://travis-ci.org/hmuronaka/HMStringIterator)

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
