ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

RUN pip install -U openai-whisper

RUN apt update && apt install -y ffmpeg

WORKDIR /files
