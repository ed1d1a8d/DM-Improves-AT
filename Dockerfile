# To build, navigate to the *root* of this repo and run:
# docker build . -t tonytwang/miax:dm-imp-at

FROM nvidia/cuda:11.1.1-cudnn8-runtime-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install utilities
RUN apt-get update -q \
  && apt-get install -y \
  curl \
  git \
  python3.9-venv \
  python3.9 \
  sudo \
  tmux \
  unzip \
  vim \
  wget \
  # Clean up
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Create virtualenv and 'activate' it by adjusting PATH.
# See https://pythonspeed.com/articles/activate-virtualenv-dockerfile/.
ENV VIRTUAL_ENV=/opt/venv
RUN python3.9 -m venv $VIRTUAL_ENV --system-site-packages
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip install --upgrade pip

# Copy and install requirements
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
