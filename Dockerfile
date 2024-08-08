FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/Inzaaa347/BX-V2 /root/Inzaaa347

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Inzaaa347/node_modules

# Install dependencies
WORKDIR /root/Inzaaa347
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
