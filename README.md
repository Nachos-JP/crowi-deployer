# crowi-deployer
The simple "crowi" deploy tool used docker

# Setup
Create .env file in this project directory, then set PASSWORD_SEED in .env
```
PASSWORD_SEED=************
```

> **Notice**  
> If you didn't set PASSWORD_SEED, you can't login when restart docker container.

# Deploy
```
# Build crowi image
$ docker-compose build

# Run crowi
$ docker-compose up -d
```

By default, listen to port 3000.  
You should be able to access to http://localhost:3000.
