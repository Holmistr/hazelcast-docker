FROM java:7
ENV HZ_VERSION 3.4.1
ENV HZ_HOME /opt/hazelcast/
RUN mkdir -p $HZ_HOME
WORKDIR $HZ_HOME
# Download hazelcast jars from maven repo.
ADD https://repo1.maven.org/maven2/com/hazelcast/hazelcast/$HZ_VERSION/hazelcast-$HZ_VERSION.jar $HZ_HOME
# Start hazelcast standalone server.
CMD java -server -cp hazelcast-$HZ_VERSION.jar com.hazelcast.core.server.StartServer

