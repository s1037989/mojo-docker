FROM perl
WORKDIR /opt/my_app
COPY . .
RUN cpanm --installdeps -n .
EXPOSE 3000
CMD ./script/my_app prefork
