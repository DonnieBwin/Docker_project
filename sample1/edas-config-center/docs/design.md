design limitation
====================
## PURPOSE

light-configcenter is orignally required by those developers who want just a demo server(poc server) which can be used in 
their develop environment(PC), so the server should be keep very light-weight way for example embedded in your application
process.

+ 1 process contains all stuff
+ 1 command to start the server (i.e. java -jar light-configcenter-v1.0.0.jar)
+ compatible with diamond-client and config-client
+ a simple gui to manager the services and 
+ the output log should human readable
+ start/stop the lightweight server very quickly(i.e. less than 3 minutes)
+ can recovery easily from crash


## DESIGN LIMITATION
Following func/requirements should not consider in this product in the feature:

1. high available
2. cluster
3. extremely performance
4. security/ACL
5. a large volumn of data, for example, hundreds of services/config 
6. a very heavy OPS/gui

When you need above features, you should move to "daily/cloud development mode".





