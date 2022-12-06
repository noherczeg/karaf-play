# karaf-play

## Get tools

```bash
./get-jdk.sh
./get-karaf.sh
```

## Run Karaf

```bash
./run-karaf.sh
```

## Prepare essentials

_In Karaf Console_

```
feature:install http
feature:install webconsole
```

## Allow an admin user to access the WebConsole

_karaf:karaf_ (DO NOT USE IN PRODUCTION)

```bash
echo "karaf = karaf,_g_:admingroup" > karaf/etc/users.properties
echo "_g_\:admingroup = group,admin,manager,viewer,systembundles,ssh" >> karaf/etc/users.properties
```

Now, the [http://localhost:8181/system/console]() should be available

## Build Bundles

```bash
mvn clean install
```

## Install Bundles

```
bundle:install -s mvn:com.example/karaf-play-contract/1.0.0-SNAPSHOT
bundle:install -s mvn:com.example/karaf-play-service/1.0.0-SNAPSHOT
```

## Install Features

```
feature:repo-add mvn:com.example/karaf-play-features/1.0.0-SNAPSHOT/xml

feature:install karaf-play-contract
feature:install karaf-play-service
```

## References

- https://karaf.apache.org/download.html
- https://www.azul.com/downloads/
- https://karaf.apache.org/manual/latest/webconsole
- https://karaf.apache.org/manual/latest/security
