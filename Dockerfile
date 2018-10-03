FROM java:8

WORKDIR /usr/src/app

COPY . .
ADD . /usr/src/app

RUN mkdir -p ./otp/graphs/current
RUN cp ./data/nantes/*.pbf ./otp/graphs/current
RUN cp ./data/nantes/*.zip ./otp/graphs/current

RUN java -Xmx1G -jar otp/otp-1.2.0-shaded.jar --basePath ./otp --build otp/graphs/current

EXPOSE 8080

CMD java -Xmx1G -jar otp/otp-1.2.0-shaded.jar --basePath ./otp --router current --graphs otp/graphs --port 8080 --securePort 8081