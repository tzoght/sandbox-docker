[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/tzoght/sandbox-docker/master/compose/sensu-server/docker-compose.yml)

# Sensu Server
### Description:

Monitoring server used by a number of companies to monitor their Compute

### Configuration:

Before deployment, generate the appropriate SSL certs with:

```
./gen-ssl.sh
```
These certs will be located within the SSL folder of the working directory.

### Files:

In order to deploy sensu-clients, use the /ssl/client certs.

Feel free to edit sensu-checks.json and sensu.json to your liking. This including setting your slack server as well as any email notifications.

## To Get Started
1. Go to compose/sensu-server
2. Generate client and server certificates:
   ``` 
   ./gen-ssl.sh 
   ```
3. Docker Compose up: 
   ``` 
   docker-compose up -d 
   ```
   You should see something like:
   ```
    Creating network "sensu-server_default" with the default driver
    Creating sensu-server_redis_1    ... done
    Creating sensu-server_rabbitmq_1 ... done
    Creating sensu-server_sensu-client_1 ... done
    Creating sensu-server_sensu_1        ... done
    Creating sensu-server_uchiwa_1       ... done
   ```
4. Sensu server is now up go to http://localhost:3000 to access the uchiwa dashboard

5. Go to Clients (http://localhost:3000/#/clients) you should see three items in Check:
    1. sensu-client
    2. keepalive
    3. myip

## Troubleshooting
### Bring the stack down
Try 
```
docker-compose down -d
```

### Modify and rebuild
Try 
```
docker-compose down -d && docker-compose build && docker-compose up

```


