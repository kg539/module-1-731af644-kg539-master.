FROM python:3.11-buster
RUN apt-get update &&\
    /usr/local/bin/python3 -m pip install --upgrade pip &&\
    /usr/local/bin/python3 -m pip install --upgrade setuptools &&\
    adduser myuser
ENV PATH="/home/myuser/.local/bin:${PATH}"
ENV APP=main.py
WORKDIR /home/myuser
COPY --chown=myuser:myuser . .
RUN pip3 install -r requirements.txt
ENTRYPOINT ["runuser", "-u", "myuser", "--", "python3", "app/__init__.py"]
CMD ["keith"]