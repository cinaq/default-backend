default-backend
==

A better looking 404 error page for use with nginx-ingress:

![Screenshot](screenshot.png)

Feel free to fork this.

Usage
==

```bash
helm install nginx-ingress \
    stable/nginx-ingress \
    --set defaultBackend.image.repository=cinaq/default-backend \
    --set defaultBackend.image.tag=1.0
```

