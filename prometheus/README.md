A relatively generic prometheus setup for monitoring.

`prometheus.yaml` contains an rbac setup to allow the appropriate permissions
to things under this namespace.

The scrape config and rules etc. are in `config.yaml` which is mounted in the
prometheus container.
TODO: look at splitting these out to be able to validate and edit easier.
