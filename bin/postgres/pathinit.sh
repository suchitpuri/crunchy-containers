#!/bin/bash

chown -R postgres /pgdata
chmod 700 /pgdata

chown -R postgres /pgwal
chmod +x /opt/cpm/bin/start.sh
exec gosu postgres /opt/cpm/bin/start.sh "$@"