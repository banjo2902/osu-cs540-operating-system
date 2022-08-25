#!/bin/bash

for t in 1 2 4 8 12 16 20 24 32
do
  for n in 500000 600000 800000 1000000 2000000 3000000 4000000 5000000
  do
    g++ -O3   proj01.cpp  -DNUMT=$t -DNUMTRIALS=$n  -o montecarlo  -lm  -fopenmp
    ./montecarlo
  done
done