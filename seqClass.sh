#!/bin/bash
seq=$1
seq=$(echo $seq | tr a-z A-Z)
if [[ $seq =~ ^[ACGTU]+$ ]]; then #entras las sequencia
 if [[ $seq =~ T ]]; then #si la sequencia conte T llavors:
  if [[ $seq =~ U ]]; then #si la sequencia que conte T tambe conte U:
    echo "The sequence is DNA or RNA"
   else # si conte T pero no U:
       echo "the sequence is DNA"
   fi
 elif [[ $seq =~ U ]] ; then #si no conte T mira si conte U:
    echo "the sequence is RNA"
  else #si no conte T ni U:
    echo "The sequence can be DNA or RNA"
  fi
else #si directament la sequencia conte algun caracter que no sigui A,C,T,U,G:
  echo "The sequence is not DNA nor RNA"
fi
