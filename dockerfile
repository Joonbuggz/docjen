FROM python:3.10-alpine

WORKDIR /app

COPY . .
RUN apt install zip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip
RUN ./aws/install

RUN pip install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]