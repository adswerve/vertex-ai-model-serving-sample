FROM python:3.8

WORKDIR = .

COPY . .

# Install pip reqs from both user and default
# NOTE: for this implementation, default-reqs.txt 
#   specifies the tornado, sklearn, and joblib libraries in 
#   the format: [library]==[version]. Build the default-reqs.txt
#   file to match your needs
RUN pip install -r default-reqs.txt

# Expose port 8080
EXPOSE 8080

# The command to start the system
ENTRYPOINT ["python3", "modelserver.py"]
