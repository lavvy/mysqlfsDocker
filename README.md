About
-----

Trial of a Docker image for mysqlfs.

For information about mysqlfs see:

https://andrea.brancatelli.it/category/tech/mysqlfs-tech/

Tested against Docker mysql/mysql-server container.

Run
---

mkdir mysqldata
docker run -p 3306:3306 -v mysqldata:/var/lib/mysql \
	--name mysql-server -e MYSQL_ROOT_PASSWORD=xx -d mysql/mysql-server:8.0

References
----------

https://github.com/skeyby/mysqlfs (forked from bianster)
https://github.com/bianster/mysqlfs

Currently taking the TEST branch.
