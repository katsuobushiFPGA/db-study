FROM ubuntu:22.04
RUN apt-get update && apt-get install -y mysql-client perl wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

RUN wget http://mysqltuner.pl/ -O mysqltuner.pl \
&& wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/basic_passwords.txt -O basic_passwords.txt \
&& wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/vulnerabilities.csv -O vulnerabilities.csv

ENTRYPOINT [ "tail", "-f", "/dev/null" ]