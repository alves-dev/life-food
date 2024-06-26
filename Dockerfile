FROM amazoncorretto:21

COPY build/food-1-runner.jar /app/application.jar

# Set the timezone to São Paulo
RUN ln -snf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && echo America/Sao_Paulo > /etc/timezone

CMD java -jar app/application.jar