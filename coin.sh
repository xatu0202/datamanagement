#!/bin/bash
t=0
h=0
echo -n "Who are you?
> "
read name
echo "Hello, $name!"
echo "Tossing a coin..."
for i in {1..3}; do
    c=$(($(($RANDOM+$RANDOM+$RANDOM+$RANDOM+$RANDOM)) % 2))
    if [ $c = 0 ] ; then
        t=$(($t+1))
        echo "Round$i:Tails"
    else 
        h=$(($h+1))
        echo "Round$i:Heads"
    fi
done
echo "Heads: $h, Tails: $t"
if [ $h -gt $t ] ; then
    echo "$name win"
else
    echo "$name lost"
fi