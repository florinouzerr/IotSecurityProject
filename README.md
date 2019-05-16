# IotSecurityProject

## Installation

You have to install [docker](https://www.docker.com/) first.


## Cheat sheet
- Stop all containers
```bash
sudo docker kill $(sudo docker ps -q)
```

- Delete all stop containers
```bash
sudo docker rm $(sudo docker ps -a -q)
```

- Remove all the images
```bash
sudo docker rmi $(sudo docker images -q)
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
