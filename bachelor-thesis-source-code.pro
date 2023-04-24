QT -= gui
QT += charts

CONFIG += c++20 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Elements.cpp \
        Layers/ConvolutionalLayer.cpp \
        Layers/FullyConnectedLayer.cpp \
        Datasets/MNIST.cpp \
        Network.cpp \
        Perceptron.cpp \
        Layers/PoolingLayer.cpp \
        Util.cpp \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    ConvolutionalLayer.h \
    Elements.h \
    FullyConnectedLayer.h \
    Layers/ConvolutionalLayer.h \
    Layers/FullyConnectedLayer.h \
    Layers/PoolingLayer.h \
    Datasets/MNIST.h \
    Network.h \
    Perceptron.h \
    PoolingLayer.h \
    Util.h
