### Balena Blocks: Reverse proxy with websocket client

Serves up index.html with a websocket client that connects to websocket server and sends commands when user presses a button.

___Usage a block___

Add the following to your `docker-compose.yaml`:

```yaml
  reverse-proxy:
    restart: always
    build: ./reverse-proxy
    ports:
      - "80:80"
    environment: 
      - WSPORT=8765
      - WSHOST=ws-server
```

___Available variables___

- `WSPORT`: port number, on which the websocket server is listening
- `WSHOST`: host/block name for the websocket server

___Environment variables defaults___

- `WSPORT`: 8765
- `WSHOST`: ws-server
