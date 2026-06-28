# TODO: Build a container image for your chosen starter app.
# Requirement: the image must run your app and serve on port 8080.
# Tip: use the files from apps/<your-language>/.

# FROM <choose a base image for your language>
# WORKDIR /app
# COPY . .
# RUN <build your app, if it needs a build step>
# EXPOSE 8080
# CMD ["<command that starts your app>"]

FROM python:3.14-slim
WORKDIR /app
COPY apps/python/ /app/
RUN pip install flask
EXPOSE 8080
CMD ["python", "app.py"]