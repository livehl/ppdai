#http
from bottle import run,post,request
#神经网络
import keras
from keras.models import load_model
import numpy

#加载模型
model=load_model('/opt/ppd.h5')

#数据预测
@post('/predict')
def predict_post():
    data=list(map(float,request.forms.get('data').split(',')))
    x = numpy.array([data])
    probabilities = model.predict(x)
    return str(probabilities[0][0])

run( host='0.0.0.0',port=80, debug=False)