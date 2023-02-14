# zulip-docker

* Startup using `docker-compose`.
```
docker-compose up -d
```

* Create zulip organization.
```
docker exec -ti zulip_server_1 /bin/bash
su zulip
cd /zulip
python3 manage.py generate_realm_creation_link
```
