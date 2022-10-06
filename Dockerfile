FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu

ENV ACCEPT_EULA Y
ENV SA_PASSWORD cortosoDW!

COPY ContosoRetailDW.bak /var/opt/mssql/data/ContosoRetailDW.bak

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

EXPOSE 1433

CMD /bin/bash ./entrypoint.sh
