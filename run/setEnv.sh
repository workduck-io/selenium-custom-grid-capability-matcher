#!/bin/bash

# 3.141.59
seleniumMajorVersion=3.141
seleniumMinorVersion=59
seleniumVersion=$seleniumMajorVersion.$seleniumMinorVersion

seleniumServerBinary=selenium-server-standalone
seleniumServerJar=$seleniumServerBinary-$seleniumVersion.jar

capabilityMatcherJar=grid-capability-matcher-$seleniumVersion.jar

HUB_CONFIG='{
  "port": 4444,
  "newSessionWaitTimeout": 60,
  "servlets": [],
  "withoutServlets": [],
  "custom": {},
  "capabilityMatcher": "com.wdio.qa.grid.matcher.CapabilityMatcher",
  "registry": "org.openqa.grid.internal.DefaultGridRegistry",
  "throwOnCapabilityNotPresent": true,
  "cleanUpCycle": 5000,
  "role": "hub",
  "debug": false,
  "browserTimeout": 0,
  "timeout": 90,
  "sessionTimeout": 90
}'

echo $HUB_CONFIG>hubconfig.json