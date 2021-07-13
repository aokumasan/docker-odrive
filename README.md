# docker-odrive

odrive cli for docker

## Usage

```sh
docker run -d -e ODRIVE_AUTH_KEY=${YOUR_AUTH_KEY} -e ODRIVE_MOUNT_LOCAL_PATH=/work -e ODRIVE_MOUNT_REMOTE_PATH=/AmazonDrive/work aokumasan/docker-odrive
```

- `ODRIVE_AUTH_KEY`: Your odrive auth key.
- `ODRIVE_MOUNT_LOCAL_PATH`: odrive local mount path.
- `ODRIVE_MOUNT_REMOTE_PATH`: odrive remote mount path.
