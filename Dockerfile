FROM python:2.7-slim
LABEL mainteiner="sebizbir@gmail.com"
USER root
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
#--trusted-host pypi.python.org
EXPOSE 80
ENV NAME World
CMD ["python", "models.py"]
CMD [sleep 15]
CMD ["python", "app.py"]
