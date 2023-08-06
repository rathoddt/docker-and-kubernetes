FROM python:3.12.0b4-slim
RUN pip install flask

WORKDIR /myapp
COPY main.py /myapp/main.py 
CMD ["python", "/myapp/main.py"]