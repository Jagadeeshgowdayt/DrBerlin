FROM python:3.10-slim


# Install system dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        git build-essential python3-dev \
        libjpeg-dev zlib1g-dev libpng-dev libfreetype6-dev \
        liblcms2-dev libopenjp2-7-dev libtiff-dev \
        tk-dev tcl-dev ffmpeg libsm6 libxext6 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set work directory
WORKDIR /VJ-FILTER-BOT

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Run your bot
CMD ["python3", "bot.py"]








 
 # Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

#FROM python:3.10.8-slim-buster

#RUN apt update && apt upgrade -y
#RUN apt install git -y
#COPY requirements.txt /requirements.txt

#RUN cd /
#RUN pip3 install -U pip && pip3 install -U -r requirements.txt
#RUN mkdir /VJ-FILTER-BOT
#WORKDIR /VJ-FILTER-BOT
#COPY . /VJ-FILTER-BOT
#CMD ["python", "bot.py"]

