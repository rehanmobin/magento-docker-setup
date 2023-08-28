# Magento Local Development Environment With Docker

A light weight configuration to quickly setup fresh open source or community Magento2 instance of any available locally on top of docker using Apache2 web server and MYSQL. 

**Stack includes:**
 Apache | PHP | MYSQL | Elasticsearch | MailHog | Redis

 ## Installation

 cd into the project folder, clone this repo or download the files manually Or use following command:
 ```
wget https://github.com/rehanmobin/magento-docker-setup/archive/refs/heads/master.zip && unzip master.zip && mv magento-docker-setup-master/{.[!.],}* ./ && rm -rf magento-docker-setup-master/ *.zip
```
 
## Usage
**Make sure you have docker and docker-compose installed for your machine.**

1. Open `.env` file and update the settings with your preferences. For more information and to see the list of all environment variables, [review the env configuration document.](docker/doc/env-configurations.md)
2. Add `SERVER_NAME` or site host into your operating system host file.
  - For windows open `C:\Windows\System32\drivers\etc\hosts` and 
   add `127.0.0.1 local.foobar.com`.
  - For Mac osx & Ubuntu open `/etc/hosts` and add `127.0.0.1 local.foobar.com`.
3. Open current directory in terminal and run `make build`. This step will download all the configured docker images and build the containers.

  It will take some time to load the dev db for the first time. When you see something like this in your terminal you are ready for the next step:

    ```
    magento-docker-mailhog-1        | [APIv1] KEEPALIVE /api/v1/events
    magento-docker-mailhog-1        | [APIv1] KEEPALIVE /api/v1/events
    ```
  4. Once you see that's ready, open a new terminal and finish the setup with: **`make setup-magento`**. Please enter repo.magento.com basic auth credentials when prompt.



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
Slef signed ssl cert is also configured generated through openssl. And site can be accessible through `https`. It still not all proper SSL cert and give users a warning in browser.
