# Network

The Oro project is founded on the concept of modularity. In the event a server or individual service is ever corrupted or made inaccessible, our infrastructure should be able to account for disruptions and we should be able to replace that given server or service with haste.

## Breakdown

Server groups by name,

* **Registry**: Docker registry for in-house builds.
* **Concourse**: Concourse CI for testing, building, and deploying.
* **Deployment**: Deployment servers for Oro services.

Available resources,

* 9 vCPU
* 4608 MB RAM
* 90 GB SSD

Oro network,

* **Registry** / 1:
    * Operating System: Ubuntu Server 14.01
    * vCPU: 3
    * RAM: 1024MB
    * Memory: 30GB SSD

* **Concourse** / 1:
    * Operating System: Ubuntu Server 14.01
    * vCPU: 2
    * RAM: 2048MB
    * Memory: 30GB SSD

* **Deployment** / 1:
    * Operating System: Ubuntu Server 14.01
    * vCPU: 2
    * RAM: 1024MB
    * Memory: 20GB SSD