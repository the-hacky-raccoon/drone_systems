#!/bin/bash

rm -rf _build/
sphinx-build -d _build/doctrees . _build/html
sphinx-serve

