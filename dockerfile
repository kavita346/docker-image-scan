FROM ubuntu
RUN apt update
ENV TERM=xterm
RUN apt -y install python3 python3-pip
RUN mkdir app
ADD . /app
RUN pip install -r /app/requirements.txt
RUN chmod +rx /app/startup.sh
CMD /app/startup.sh ; sleep infinity
