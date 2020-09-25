FROM debian:latest
RUN apt -y update
RUN apt -y install httpd
ADD index.html /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUNF"] 
EXPOSE 80
