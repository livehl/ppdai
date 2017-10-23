FROM gw000/keras:2.0.8-py3-tf-gpu
RUN  pip3 install bottle
copy ["paipai_pred.py", "/opt/"]
copy ["ppd.h5", "/opt/"]
EXPOSE 80
CMD /usr/bin/python3 /opt/paipai_pred.py