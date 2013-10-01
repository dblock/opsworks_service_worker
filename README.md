opsworks_service_worker
=======================

These recipes set-up an [AWS OpsWorks](http://aws.amazon.com/opsworks/) instance to run a service worker within a Rails environment.

Compatibility
-------------

Currently only compatible with [raad](https://github.com/colinsurprenant/raad).

Configuration Examples
----------------------

You must specify a list of services to run in your stack's custom JSON.

    {
      "services": {
        "your-app-name" : {
          "service_daemon": {
            "cmd" : "script/service_daemon",
            "args" : "--any-additional=parameters"
          }
        }
      }
    }

OpsWorks Set-Up
---------------

The layer's custom chef recipes should be associated with events as follows:

* **Setup**: `opsworks_service_worker::setup`
* **Configure**: `opsworks_service_worker::configure`
* **Deploy**: `opsworks_service_worker::deploy`
* **Undeploy**: `opsworks_service_worker::undeploy`
* **Shutdown**: `opsworks_service_worker::stop`

License
-------

MIT. See [LICENSE](LICENSE).

&copy; 2013 Daniel Doubrovkine, [Artsy](http://artsy.net).
