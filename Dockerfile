RUN yum install -y java-11-openjdk-headless.x86_64
RUN curl -s "https://get.sdkman.io" | bash && source "$HOME/.sdkman/bin/sdkman-init.sh"
RUN yes | /bin/bash -l -c "sdk install gradle 7.3.1"
RUN wget --no-check-certificate https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz && cp -R apache-maven-3.8.4-bin.tar.gz /usr/local/bin
RUN export PATH=apache-maven-3.8.4/bin:$PATH && export PATH=/usr/local/bin/apache-maven-3.8.4/bin:$PATH
RUN ln -s /usr/local/bin/apache-maven-3.8.4/bin/mvn /usr/local/bin/mvn
