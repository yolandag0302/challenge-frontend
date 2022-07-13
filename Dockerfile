FROM node:lts-alpine
WORKDIR /app
RUN npm install -g @vue/cli

# docker build -t vueapp -f Dockerfile .
# docker run -itd -v ${PWD}:/app --name vueapp vueapp
# docker exec -it vueapp vue create vue-application
# sudo chown -R $USER:$(id -gn $USER) ./*
# npm run serve
