# Cassandra
[![Build Status](https://travis-ci.org/gini/cassandra.svg?branch=master)](https://travis-ci.org/gini/cassandra)

Gini's fork of the official Cassandra image. Builds weekly to keep up to date with the official, source one.

This image simply increases the amount exposed configuration options through environment variables. These are:

Env variable  | Default value
------------- | -------------
CASSANDRA_LISTEN_ADDRESS | auto
CASSANDRA_RANGE_REQUEST_TIMEOUT_IN_MS | 10000
CASSANDRA_WRITE_REQUEST_TIMEOUT_IN_MS  | 2000
CASSANDRA_COUNTER_WRITE_REQUEST_TIMEOUT_IN_MS | 5000
CASSANDRA_READ_REQUEST_TIMEOUT_IN_MS | 5000
CASSANDRA_REQUEST_TIMEOUT_IN_MS | 10000
CASSANDRA_STORAGE_PORT | 7000
CASSANDRA_SSL_STORAGE_PORT | 7001
CASSANDRA_NATIVE_TRANSPORT_PORT | 9042
CASSANDRA_RPC_PORT | 9160
CASSANDRA_COMMITLOG_TOTAL_SPACE_IN_MB | 8196
