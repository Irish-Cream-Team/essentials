# Intention

The intention of this chart is to centralize all of the branch's commonly used applications;

The chart currently includes

1. mongo
2. redis
3. rabbit
4. incoming spike proxy
5. outgoing spike proxy
6. minio

## Mongo

> **essentials.mongo.enabled(boolean, false):** change to true if mongo is needed.
>
> **essentials.mongo.name(string, mongo):** name of mongo instance, applies to service and deployment.
>
> **essentials.mongo.PullSecrets(array):** an array of pull secrets for the deployment.
>
> **essentials.mongo.image(sring, mongo):** image for mongo to use
>
> **essentials.mongo.replicaset(bool, false):** set to true if you need mongo replicaset features
>
> **essentials.mongo.port(int, 27017):** port for mongodb to use

## Redis

> **essentials.redis.enabled(boolean, false):** change to true if redis is needed.
>
> **essentials.redis.name(string, redis):** name of redis instance, applies to service and deployment.
>
> **essentials.redis.PullSecrets(array):** an array of pull secrets for the deployment.
>
> **essentials.redis.image(sring, redis):** image for redis to use
>
> **essentials.redis.port(int, 6379):** port for redis to use

## rabbit

> **essentials.rabbitmq.enabled(boolean, false):** change to true if rabbitmq is needed.
>
> **essentials.rabbitmq.name(string, rabbit):** name of rabbit instance, applies to service and deployment.
>
> **essentials.rabbitmq.PullSecrets(array):** an array of pull secrets for the deployment.
>
> **essentials.rabbitmq.image(sring, rabbit):** image for rabbit to use
>
> **essentials.rabbitmq.port(int, 15672):** port for rabbit to use

## incomig-spike-proxy

> **essentials.inspike.enabled(boolean, false):** change to true if inspike is needed.
>
> **essentials.inspike.name(string, incoming-spike-proxy):** name of inspike instance, applies to service and deployment.
>
> **essentials.inspike.PullSecrets(array):** an array of pull secrets for the deployment.
>
> **essentials.inspike.image(sring, registry.gitlab.com/yesodot/rnd/terminal-rabaz/shared/spike-proxy-service:latest):** image for inspike to use
>
> **essentials.inspike.port(int, 3000):** port for inspike to use
>
> **essentials.inspike.incoming_services(quoted JSON):** setting the INCOMING_SERVICES env var for spike
>
> **essentials.inspike.public_key_full_path(string):** setting the SPIKE_PUBLIC_KEY_FULL_PATH env var for spike

## outgoing-spike-proxy

> **essentials.outspike.enabled(boolean, false):** change to true if outspike is needed.
>
> **essentials.outspike.name(string, outgoing-spike-proxy):** name of outspike instance, applies to service and deployment.
>
> **essentials.outspike.PullSecrets(array):** an array of pull secrets for the deployment.
>
> **essentials.outspike.image(sring, registry.gitlab.com/yesodot/rnd/terminal-rabaz/shared/spike-proxy-service:latest):** image for inspike to use
>
> **essentials.outspike.port(int, 3000):** port for inspike to use
>
> **essentials.outspike.client_id(string):** setting the SPIKE_CLIENT_ID env var for spike
>
> **essentials.outspike.client_secret(string):** setting the SPIKE_CLIENT_SECRET env var for spike
>
> **essentials.outspike.outgoing_services(quoted JSON):** setting the OUTGOING_SERVICES env var for spike
>
> **essentials.outspike.public_key_full_path(string):** setting the SPIKE_PUBLIC_KEY_FULL_PATH env var for spike
>
> **essentials.outspike.redis_host(string):** setting the SPIKE_REDIS_HOST env var for spike
>
> **essentials.outspike.redis_key_prefix(string):** setting the SPIKE_REDIS_KEY_PREFIX env var for spike
>
> **essentials.outspike.spike_url(quoted JSON):** setting the SPIKE_URL env var for spike

> ## minio

> **essentials.minio.enabled(boolean, false):** change to true if minio is needed.
>
> **essentials.minio.name(string, minio):** name of minio instance, applies to service deployment and ingress if enabled.
>
> **essentials.minio.port(int, 9000):** port for minio to use
> 
> **essentials.minio.UIport(int, 9001):** port for UI minio 
> 
> **essentials.minio.rootUser(int, admin):** root user to connect minio UI 
>
> **essentials.minio.rootPassword(string, yesodot12345):** root password to connect minio UI 
> 
> **essentials.minio.ingress.enabled(boolean, false):** change to true if ingress is needed.
> 
> **essentials.minio.ingress.path(string, /):** path for ingress to rout.
> 
> **essentials.minio.ingress.hosts(string, minio.branch-yesodot.org):** the host name of minio ingress.
