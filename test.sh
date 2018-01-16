#!/bin/sh
cd myrepo
npm install
mocha testfile.js --reporter mochawesome
# mocha --compilers "coffee:coffee-script/register" tests/daily_bookings-test.js
