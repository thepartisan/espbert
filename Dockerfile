FROM bschwind/esp-32-build:latest

RUN apt-get -q update
RUN apt-get install -y  \
                          python-pip \
    && apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY requirements.txt /requirements.txt
RUN python -m pip install -r /requirements.txt
