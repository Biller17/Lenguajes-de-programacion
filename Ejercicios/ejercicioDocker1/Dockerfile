FROM ubuntu:git

RUN apt-get install sl -y
RUN mkdir prueba
RUN echo "hello world" > prueba/greeting

#montar el volumne que se llama prueba
VOLUME prueba

#genera una variable de entorno
ENV BILLER = "hola"

CMD sl
# exponer un puerto
EXPOSE 80
