#!/bin/bash

psql -U postgres -d investors2 -c "UPDATE users SET money=money+100;"
psql -U postgres -d investors2 -c "UPDATE users SET totalstockvalue=totalstockvalue+100;"
