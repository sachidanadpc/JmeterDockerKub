#!/bin/bash
# Script to run JMeter tests locally with Docker

# Specify the path to your JMeter test plan file
TEST_PLAN_PATH="/tests/scripts/testplan.jmx"

# Check if the test plan file exists
if [ ! -f "$TEST_PLAN_PATH" ]; then
    echo "Error: The file $TEST_PLAN_PATH doesn't exist or can't be opened"
    exit 1
fi

# Run JMeter tests with Docker
docker run --rm -v "$TEST_PLAN_PATH:/jmeter/testplan.jmx" justb4/jmeter:latest -n -t /jmeter/testplan.jmx -l /jmeter/testplan.jtl
