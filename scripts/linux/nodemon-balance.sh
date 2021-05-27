#!/bin/bash

ADD_DATA () {
	SQL_QUERY "CREATE TABLE IF NOT EXISTS balances (
		address TEXT,
		updateTime INTEGER,
		difference INTEGER,
		balance REAL,
		nrgPrice REAL
	);"

	UPDATE_TIME=$(date +%s)

	SQL_QUERY "INSERT INTO balances (address, updateTime, difference, balance, nrgPrice)
	    VALUES ('${ADDR}','${UPDATE_TIME}','${BALANCE_DIFF}','${GETTOTALBALANCE}', '${NRGMKTPRICE}');"
}

ADD_DATA
