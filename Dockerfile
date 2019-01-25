#Task Trainee Devops
FROM python:3.7-stretch

#Identificação de quem escreveu o dockerfile
MAINTAINER  ricardo.meirinho@findmore.pt

#workdir deve ser /app
WORKDIR /app

#Deve ser adicionado o directorio atual a /app
ADD . /app

#Instalar os módulos necessários usando o pip (pip install -r requirements.txt)
RUN pip install -r /requirements.txt

# Expor a porta 80
EXPOSE 80

#Correr a aplicação “app.py”
CMD ["python","app.py"]

