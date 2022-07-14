# challenge-fronted

## Project setup
```
docker build -t vueapp -f Dockerfile .

docker run -itd -v ${PWD}:/app --name vueapp vueapp
```

### Compiles and hot-reloads for development
```
cd challenge-fronted

npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
