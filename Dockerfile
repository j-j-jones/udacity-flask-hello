FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY hello.py /app
#COPY . web.py /app/
#COPY . nlib /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt
	
# Expose Port 5001
EXPOSE 5001

# Run app.py
#CMD ["python", "web.py", "hello.py"]
RUN env FLASK_APP=hello.py flask run
	