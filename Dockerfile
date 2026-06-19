FROM python:3.11

RUN apt-get update && apt-get install -y ffmpeg
RUN pip install gdown

COPY start.sh .
RUN chmod +x stream.sh

CMD ["bash", "start.sh"]
