# Magento Local Development Environment With Docker

A light weight configuration to quickly setup fresh open source or community Magento2 instance locally on top of docker using Apache2 web server and MYSQL. 

**Stack includes:**
 Apache | PHP | MYSQL | Elasticsearch | MailHog | Redis
 
## Usage
- Clone this repo or download the files manually.
- Open `.env` file and update the settings with your preferences.
	
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




