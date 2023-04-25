# Simple Notes App

README.md for Hosting a Notes App on Ubuntu using React, Django, Nginx, and Docker

### Introduction:
This guide will walk you through the steps to host a simple Notes App using React and Django on an Ubuntu server with Nginx as a reverse proxy and Docker to containerize the app.

## Requirements:

1. Ubuntu Server 20.04
2. Python 3.9
3. Node.js
4. React
5. Docker Installation:


## Installation

1. Update Ubuntu packages
```
sudo apt update
```


2. Clone the repository
```
git clone https://github.com/Supu-27/Django-Notes-App.git
```

3. Build the app
```
docker build -t notes-app .
```

4. Run the app
```
docker run -d -p 8000:8000 notes-app:latest
```

5. Install and configure Nginx as a reverse proxy
```
sudo apt install nginx
sudo systemctl status nginx
sudo systemctl restart nginx
```

#Nginx staic website


![image](https://user-images.githubusercontent.com/125067454/234197604-887446ff-0db8-4e30-b4e9-235156e2c9a3.png)











6. Open Nginx configuration file
```
cd /etc/nginx/sites-enabled
sudo vim default
```

7. Paste the following configuration into the file
```
location / {
                proxy_pass http://127.0.0.1:8000;

        }
location /api {
        proxy_pass http://127.0.0.1:8000/api;

}
```

8. Restart Nginx to apply the new configuration

```
sudo systemctl restart nginx
```

9. Access the app on a web browser by navigating to
http://your_domain_name_or_ip_address



## Conclusion:
Congratulations! You have successfully hosted a Notes App using React, Django, Nginx, and Docker on an Ubuntu server.



![Django-notes-app](https://user-images.githubusercontent.com/125067454/234079330-1607b9da-1041-4c68-95ed-0252d000cd3c.png)













![Django-Notes-app-updated](https://user-images.githubusercontent.com/125067454/234096119-b30771d7-2cb7-4175-9286-3f2e68b95582.png)













