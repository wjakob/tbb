#!/bin/bash

ranlib $@ 2>&1 | grep -v "has no symbols"
exit ${PIPESTATUS[0]}
