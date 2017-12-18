to compile 
docker build -t gunicorn .

to run 
docker run --rm -p 5000:5000 -ti gunicorn

please restart gunicorn at start up
/etc/init.d/gunicorn restart

go to http://ip:5000/

