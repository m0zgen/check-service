# Check if a service is running
You can use script check-service.sh:
```sh
  ./check-service.sh nginx
```

Also you can add this script to crontab:
```sh
  * * * * * /path/to/check-service.sh libvirtd > /dev/null
```

# Other
show-services-status.sh - script for showing status services from list