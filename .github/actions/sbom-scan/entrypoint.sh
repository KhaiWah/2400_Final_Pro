#!/bin/bash

syft requirements.txt -o cyclonedx-json=sbom.json
grype sbom.json --by-cve --fail-on critical
