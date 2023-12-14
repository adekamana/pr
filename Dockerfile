FROM python:3.10
EXPOSE 8501

# Upgrade pip and install requirements
COPY requirements.txt requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

# Copy app code and set working directory
COPY . .
WORKDIR /app

ENTRYPOINT ["streamlit","run"]

CMD ["app.py"]