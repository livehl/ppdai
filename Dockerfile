FROM gw000/keras:2.0.6-py3
RUN  pip3 install bottle
copy ["paipai_pred.py", "/opt/"]
copy ["ppd.h5", "/opt/"]
EXPOSE 80
CMD ['python3','/opt/paipai_pred.py']
