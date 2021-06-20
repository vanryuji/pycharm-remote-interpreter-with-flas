FROM python:3.6.13-stretch

WORKDIR /usr/src/app

# By copying over requirements first, we make sure that Docker will cache
# our installed requirements rather than reinstall them on every build
COPY requirements.txt ./
RUN pip install -r requirements.txt

#EXPOSE 5000

# If want run our code in docker container copy and run it
#COPY . ./
#CMD ["", "manage.py", "runserver", "0.0.0.0:8000"]

# For devlop environment dont execute anything
CMD ["bin/bash"]
