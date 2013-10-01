name             "opsworks_service_worker"
maintainer       "Artsy"
maintainer_email "it@artsymail.com"
license          "MIT"
description      "Configure and deploy background service workers."

recipe 'opsworks_service_worker::setup', 'Set up service worker.'
recipe 'opsworks_service_worker::configure', 'Configure service worker.'
recipe 'opsworks_service_worker::deploy', 'Deploy service worker.'
recipe 'opsworks_service_worker::undeploy', 'Undeploy service worker.'
recipe 'opsworks_service_worker::stop', 'Stop service worker.'

depends 'deploy'
