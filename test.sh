#! /bin/sh

testNumberOfLinesAsDefault() {
  result=`./ribs sample.txt | wc -l`
  assertEquals 10 $result
}

testNumberOfLinesWithNumber() {
  result=`./ribs -n 10 sample.txt | wc -l`
  assertEquals 10 $result
}

testFirstLineAsDefault() {
  result=`./ribs sample.txt | head -n 1`
  assertEquals 1 $result
}

testFirstLineWithOffset() {
  result=`./ribs -o 5 sample.txt | head -n 1`
  assertEquals 5 $result
}

testLastLineWithOffset() {
  result=`./ribs -o 5 -n 10 sample.txt | tail -n 1`
  assertEquals 14 $result
}

testFirstLineWithBigOffset() {
  result=`./ribs -o 18 -n 10 sample.txt | head -n 1`
  assertEquals 18 $result
}

testLastLineWithBigOffset() {
  result=`./ribs -o 18 -n 10 sample.txt | tail -n 1`
  assertEquals 20 $result
}

# load shunit2
. shunit2
