#!/bin/bash
# Test script: test_api.sh

echo "Testing API access..."
echo "1. Testing basic connectivity:"
curl -I "https://pokeapi.co/api/v2/pokemon/pikachu" 2>&1 | head -5

echo ""
echo "2. Testing with timeout:"
timeout 10 curl -s "https://pokeapi.co/api/v2/pokemon/pikachu" | head -5

echo ""
echo "3. Testing DNS resolution:"
nslookup pokeapi.co 2>&1 | head -5

echo ""
echo "4. Checking network connection:"
ping -c 1 -W 2 8.8.8.8 2>&1 | head -2
