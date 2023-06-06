# Magento Local Development Environment With Docker

A light weight configuration to quickly setup fresh open source or community Magento2 instance locally on top of docker using Apache2 web server and MYSQL. 

**Stack includes:**
 Apache | PHP | MYSQL | Elasticsearch | MailHog | Redis
 
## Usage
**Make sure you have docker and docker-compose installed for your machine.**

1. cd into the project folder, Clone this repo or download the files manually Or use following command to download:
```
wget https://github.com/rehanmobin/magento-docker-setup/archive/refs/heads/master.zip && unzip master.zip && mv magento-docker-setup-master/* ./ && rm -rf magento-docker-setup-master/ *.zip
```
2. Open `.env` file and update the settings with your preferences.
3. Add `SERVER_NAME` or site host into your operating system host file.
  - For windows open `C:\Windows\System32\drivers\etc\hosts` and 
   add `127.0.0.1 local.foobar.com`.
  - For Mac osx & Ubuntu open `/etc/hosts` and add `127.0.0.1 local.foobar.com`.
4. Open current directory in terminal and run `make build`. This step will download all the configured docker images and build the containers.
  It will take some time to load the dev db for the first time. When you see something like this in your terminal you are ready for the next step:

  ```
  magento-docker-mailhog-1        | [APIv1] KEEPALIVE /api/v1/events
  magento-docker-mailhog-1        | [APIv1] KEEPALIVE /api/v1/events
  ```
  5. Once you see that's ready, open a new terminal and finish the setup with: **`make setup-magento`**. Please enter repo.magento.com basic auth credentials when prompt.



	
| Variable| Description |Example|
|---	|---	|---	|
|   `PROJECT_NAME`	|   Name of your project	|   foocosmetics\| myshop \| azmart	|
|   `MAGENTO_VERSION`	|   Version of Magento software	|   `2.4.5-p1` \| `2.3.5` \| `2.4.3`	|
|   `SERVER_NAME`	|   Server name or Host name|  local.foobar.com \| abc.local 	|
|   `APP_URL`	|   Project instance url	|  https://local.foobar.com \| https://abc.local 	|
|   `MYSQL_VERSION`	|   Version of mysql server. Should be compatible with the magento  version	|  `8.0` \| `5.6` 	|
| `MYSQL_HOST` | mysql server host. Do not change it's value unless you know.| `mysql` |
|   `MYSQL_DATABASE`	|   mysql database name	|  `magento-db` 	|
|   `MYSQL_USER`	|  mysql username	|  `magento` 	|
|   `MYSQL_ROOT_PASSWORD`	|   mysql server root password	|  `magento123` 	|
|   `MYSQL_PASSWORD`	|   mysql db user password	|  `magento123` 	|
| `PHP_VERSION` | Version of php. Should be compatible with the magento  version | `8.1` \| `7.3` |
| `ELASTICSEARCH_VERSION` | Version of Elastichsearch server.  Should be compatible with the magento  version | `7.6.0` \| `5` |
| `ELASTICSEARCH_HOST` | Elasticsearch server hostname. Do not change it's value unless you know. | `elasticsearch` |
| `ELASTICSEARCH_PORT` | Elasticsearch server port number. | `9300` \| `9200` |
| `ELASTICSEARCH_ENGINE` | Elasticsearch engine number. It will be used to set the ES engine option in Magento admin Configuration. | `elasticsearch7` \| `elasticsearch5` |
| `ADMIN_EMAIL` | Magento admin user email address | admin@local.foobar.com |
| `ADMIN_USERNAME` | Magento admin username | `admin` |
| `ADMIN_PASSWORD` |Magento admin user password  | `admin12345` |
| `ADMIN_URI_PATH` | Magento admin console path. Should be relative. | `admin` \| `adminconsole` \| `adminhq` |
| `LANGUAGE` | Magento store language | `en_US` \| `en_UK` |
| `CURRENCY` | Magento store currency | `USD` \| `INR` |
| `TIME_ZONE` | Magento store time zone | `America/Chicago` |
| `ADMIN_USER_FIRSTNAME` | Magento admin user firstname | `foo` \| `matt` |
| `ADMIN_USER_LASTNAME` | Magento admin user last name | `bar` \| `adam` |
| `REDIS_HOST` | Redis server host. Do not change it's value unless you know. | `redis` |
| `REDIS_SERVER_PORT` | Redis server port number.  | `6379`|
| `a` |  |  |


## Quick References

- Once everything is setup, do not run `make build` again.
- Re starting the Containers: `docker-compose start` or `docker-compose up`
- Shell access to the magento container: `docker-compose exec app bash` 
- Shell access to the magento container as root user: `docker-compose exec -u app bash` 
- View the site at: https://local.foobar.com or what ever your `APP_URL` is 
- View the admin at: https://local.foobar.com/adminhq or what ever your `ADMIN_URI_PATH` is

## MailHog

This setup comes with Mailhog which is an email testing tool for developers. It will capture all outgoing emails and can be viewed on it's web UI at `localhost:8025` or `APP_URL:8025`

## Self Signed SSL Certificate
Slef signed ssl cert is also configured generated through openssl. And site can be accessible through `https`.
