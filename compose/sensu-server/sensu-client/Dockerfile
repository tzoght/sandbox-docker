# 
# Used for Docker Compose stuff.
# See https://github.com/sandbox-docker
#

FROM centos

ENV PATH="/opt/sensu/embedded/bin:${PATH}"

MAINTAINER Tony Zoght <tony@zoght.com>

ADD ./sensu.repo /etc/yum.repos.d/sensu.repo

#! Sensu client
RUN yum -y install sensu

RUN sensu-install -p uptime-checks \
    && sensu-install -p process-checks 

#! Add supervisord
ADD ./run.sh /run.sh
RUN chmod +x ./run.sh

CMD ["./run.sh"]
