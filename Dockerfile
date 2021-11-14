FROM python:3.8-slim
WORKDIR /home/fajrul/workspace/sample-project
RUN apt update 
RUN apt install bash
RUN pip3 install --upgrade pip
RUN pip3 install jupyter

## Package for learning
RUN pip3 install matplotlib
RUN pip3 install pandas
RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install scikit-learn
RUN pip3 install theano
RUN pip3 install tensorFlow
RUN pip3 install keras
RUN pip3 install matplotlib
ENTRYPOINT ["jupyter","notebook","--ip='*'","--port=8888","--no-browser", "--allow-root"]
