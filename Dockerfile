FROM python:3.7.3-stretch
  
# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Run app.py at container launch 
# does not work because of wrong port being used
# CMD ["flask", "run"]
CMD ["python", "app.py"]

# you can also use this instead of the CMD instruction
# ENTRYPOINT python app.py
