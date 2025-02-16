FROM python:3.9-slim
#Official python image with "-slim" tag that represnts the smaller version of image

WORKDIR /app
#Set the working directory in container

COPY . /app
# Copy current directory data at /app inside the container

RUN pip --no-cache-dir install -r requirements.txt
#Install the dependencies

EXPOSE 9001
#Expose the port on which the app will run

CMD ["python3", "main.py"]
#Command to run the app
#
