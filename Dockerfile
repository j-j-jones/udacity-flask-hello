FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . hello.py /app/
COPY . web.py /app/
COPY . nlib /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
	
# Expose Port 80
EXPOSE 80	

# Run app.py
CMD ["python", "web.py", "hello.py"]
	