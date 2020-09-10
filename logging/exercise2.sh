#!/bin/bash
logging() {
	NUMBER=$RANDOM
	echo "$NUMBER"
	logger -t randomly -p user.info "$NUMBER"
}

logging
logging
logging
