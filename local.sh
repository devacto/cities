#!/bin/bash

set -euo pipefail

mysql -u root --password='example' -h '127.0.0.1' --protocol 'TCP'