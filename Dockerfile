FROM ubuntu:20.04
CMD [ "/bin/bash" ]
WORKDIR /playbook

# Copy project into container
COPY . /playbook/

# Update existing packages
RUN apt-get update -y && apt-get upgrade -y && apt autoremove -y

# Add python repository
RUN apt-get install software-properties-common -y && \
    add-apt-repository -y --update ppa:ansible/ansible

# Install python packages
RUN apt-get install -y \
    python3.9 \
    python3-distutils \
    git \
    curl \
    sshpass \
    && rm -rf /var/lib/apt/lists/*

# Install pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.9 get-pip.py --user

RUN python3.9 -m pip install \ 
    ansible==7.3.0 \
    argcomplete \
    ansible-lint==6.14.2 && \
    activate-global-python-argcomplete
