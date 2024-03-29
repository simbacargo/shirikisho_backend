from channels import route

from .consumers import ws_connect, ws_disconnect, ws_receive


websocket_routing = [
    route(" ", ws_connect),
    route("(?P<username>[^/]+)", ws_connect),
    route("websocket.connect", ws_connect),
    route("websocket.disconnect", ws_disconnect),
    route("websocket.receive", ws_receive),
]
