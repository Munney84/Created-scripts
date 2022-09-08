#!/bin/bash

echo "which package would you like to locate?";
read pckg;

apt list $pckg
