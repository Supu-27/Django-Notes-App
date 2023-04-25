# Simple Notes App
This is a simple notes app built with React and Django.

## Requirements
1. Python 3.9
2. Node.js
3. React
4. Docker

## Installation
1. Clone the repository
```
git clone https://github.com/Supu-27/Django-Notes-App.git
```

2. Build the app
```
docker build -t notes-app .
```

3. Run the app
```
docker run -d -p 8000:8000 notes-app:latest
```

## Nginx

Install Nginx reverse proxy to make this application available

`sudo apt-get update`
`sudo apt install nginx`
`sudo systemctl status nginx`
`sudo systemctl restart nginx`

Nginx Default root : /var/www/html
Nginx Default configuration stored in : /etc/nginx/nginx.conf


# Conclusion :

So here we have successfully built a simple notes app using the front-end and backend skills with Django and React.













![Django-Notes-app-updated](https://user-images.githubusercontent.com/125067454/234096119-b30771d7-2cb7-4175-9286-3f2e68b95582.png)















![Django-notes-app](https://user-images.githubusercontent.com/125067454/234079330-1607b9da-1041-4c68-95ed-0252d000cd3c.png)




















