#!/bin/bash
# Script to run JMeter tests locally with Docker

docker run --rm -v /tests/scripts/testplan.jmx:/jmeter/testplan.jmx justb4/jmeter:latest -n -t /jmeter/testplan.jmx -l /jmeter/testplan.jtl
