A rook-ceph deployment for managing storage across the cluster.

Data is stored on the nodes in `/var/lib/rook`.
The exact setup of where the data goes may well change as we add nodes.

The RBAC for the rook-ceph-namespace operator was causing problems, so
the rook common.yaml needed to be modified, it is currently excessively
permissive.
