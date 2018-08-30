FROM java:8u111-jre
# Install Mule runtime

#RUN cd /opt
RUN wget https://repository-master.mulesoft.org/nexus/service/local/repositories/releases/content/org/mule/distributions/mule-standalone/3.9.0/mule-standalone-3.9.0.tar.gz
RUN tar xvzf mule-standalone-3.9.0.tar.gz

#RUN rm mule-standalone-3.9.0.tar.gz
RUN ln -s /mule-standalone-3.9.0 /mule
 
#Start Mule runtime engine
RUN pwd
CMD ["/mule/bin/mule"]

#Deploy Application
Add target/dockerhelloworld-1.0.0-SNAPSHOT.zip /mule/apps/dockerhelloworld-1.0.0-SNAPSHOT.zip