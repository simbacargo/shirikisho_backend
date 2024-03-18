from channels.consumer  import AsyncConsumer
import json
from asgiref.sync import async_to_sync
from channels.consumer  import SyncConsumer
from authentication.models import User
import asyncio
# from channels import Group
# from django.contrib.auth.models import User
# from channels.auth import channel_session_user, channel_session_user_from_http
# @channel_session_user_from_http
# def ws_connect(message):
#     message.reply_channel.send({"accept": True})
#     Group('{}'.format(message.user)).add(message.reply_channel)


# @channel_session_user
# def ws_disconnect(message):
#     Group('{}'.format(message.user)).discard(message.reply_channel)


# def ws_receive(message):
#     old_message = json.loads(message.content['text'])
#     if old_message['activity_type'] == "set_status":
#         Group('notifications').send({
#             'text': json.dumps({
#                 'sender': old_message['sender'],
#                 'status': old_message['status'],
#                 'activity_type': old_message['activity_type']
#             })
#         })

from chat.managers import ThreadManager
from chat.models import  Message,Thread
class ChatConsumer(SyncConsumer):
    def websocket_connect(self,event):
        me = self.scope['user']
        other_username = self.scope["url_route"]["kwargs"]["username"]
        other_user = User.objects.get(username=other_username)
        # me = User.objects.get(username=me)
        print(other_user)
        thread_obj=Message.objects.get_or_create_personal_thread(me,other_user)
        self.room_name=f'personal_thread_{thread_obj.id} '
        print (event)
        async_to_sync(self.channel_layer.group_add)(self.room_name,self.channel_name)
        self.send({
            "type": "websocket.accept"
        })
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 
        print(f'[{self.channel_name}] - You are connected') 

    def websocket_receive(self,event):
        #This will be the response sent back to the user   
        
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        self.send({"type": "websocket.send","text": event.get('text')})
        print(f'[{self.channel_name}] - Received message -{event["text"]}')
        async_to_sync(self.channel_layer.group_send)(self.room_name,
            {
                'name':'websocket.message',
                'type':event.get("text")
            }   
        )

    def websocket_message(self,event):
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        self.send({
                "type": "websocket.send",
                "text": event.get('text')}
                )
    
    def websocket_disconnect(self,event):
        async_to_sync(self.channel_layer.group_discard)(self.room_name,self.channel_name)
        # print(f'[{self.channel_name}] - disconnected')
        # print(event)
    
from channels.generic.websocket import AsyncWebsocketConsumer


# class ChatConsumer(AsyncWebsocketConsumer):
#     """Consumer to manage WebSocket connections for the Messager app.
#     """

#     async def connect(self):
#         """Consumer Connect implementation, to validate user status and prevent
#         non authenticated user to take advante from the connection."""
#         if self.scope["user"].is_anonymous:
#             # Reject the connection
#             await self.close()

#         else:
#             # Accept the connection
#             await self.channel_layer.group_add(
#                 f"{self.scope['user'].username}", self.channel_name
#             )
#             await self.accept()

#     async def disconnect(self, close_code):
#         """Consumer implementation to leave behind the group at the moment the
#         closes the connection."""
#         await self.channel_layer.group_discard(
#             f"{self.scope['user'].username}", self.channel_name
#         )

#     async def receive(self, text_data):
#         """Receive method implementation to redirect any new message received
#         on the websocket to broadcast to all the clients."""
#         await self.send(text_data=json.dumps(text_data))

class EchoConsumer(SyncConsumer):
    def websocket_connect(self,event):
        self.room_name="broadcast"
        self.send({"type": "websocket.accept"})
        print (event)
        async_to_sync(self.channel_layer.group_add)(self.room_name,self.channel_name)
        print(f'[{self.channel_name}] - You are connected')

    def websocket_receive(self,event):
        #This will be the response sent back to the user   
        
        self.send({"type": "websocket.send","text": event.get('text')})
        print(f'[{self.channel_name}] - Received message -{event["text"]}')
        async_to_sync(self.channel_layer.group_send)(self.room_name,
            {
                'name':'websocket.message',
                'type':event.get("text")
            }   
        )

    def websocket_message(self,event):
        print(f'[{self.channel_name}] - Message sent - {event["text"]}')
        self.send({
                "type": "websocket.send",
                "text": event.get('text')}
                )
    
    def websocket_disconnect(self,event):
        async_to_sync(self.channel_layer.group_discard)(self.room_name,self.channel_name)
        print(f'[{self.channel_name}] - disconnected')
        # print(event)


import asyncio
from channels.db import database_sync_to_async

from core.encryption import ceaser_chiper

class ChatConsumer(AsyncConsumer):
    async def websocket_connect(self, event):
        me = self.scope['user']
        other_username = self.scope["url_route"]["kwargs"]["username"]
        # other_user = User.objects.get(username=other_username)
        thread_obj = await self.get_thread(me, other_username)
        chat_room =f'thread_{thread_obj.id}'
        self.chat_room=chat_room
        await self.channel_layer.group_add(chat_room,self.channel_name)

        await self.send({"type": "websocket.accept"})
        print(f'[{self.channel_name}] - You are connected')
        await asyncio.sleep(0)

    async def websocket_receive(self, event):
        #This will be the response sent back to the user
        # await self.send({"type": "websocket.send", "text": event.get('text')})
        
        print(f'[{self.channel_name}] - Received message -{event["text"]}')
        from_text = event.get('text',None)
        if from_text is not None:
            #The following code is for future incase weneed multiple values 
            #for extrafeatures as opposed to now where we only the text so we use the string function in the below
            # loaded_data = json.loads(from_text)
            # msg=loaded_data.get('the_message')
            # print('msg =' + msg)
            

            # Said data
            loaded_data = from_text
            msg=loaded_data
            me = self.scope['user']
            myResponse = {
                "text": msg,
                'username':me.username,

            }
            myResponse = myResponse["text"]
            other_username = self.scope["url_route"]["kwargs"]["username"]    
            await self.create_chat_message(myResponse)
            # await self.send({"type": "websocket.send", 'text':json.dumps(myResponse)})
            # new_event= {"type": "websocket.send", 'text':json.dumps(myResponse['text'])}
            # new_dict= {"type": "chat_message", 'text':json.dumps(myResponse['text'])}
            new_event= {"type": "websocket.send", 'text':myResponse}
            new_dict= {"type": "chat_message", 'text':myResponse}


            # broadcasts the message event to be sent
            await self.channel_layer.group_send(
                self.chat_room,new_dict
                )
    async def chat_message(self,event):
        #sends the actual message
        print(event)
        await self.send({'type':"websocket.send",'text':event['text']})

    async def websocket_disconnect(self, event):
        # await async_to_sync(self.channel_layer.group_discard)(self.room_name,self.channel_name)
        print(f'[{self.channel_name}] - disconnected')

    @database_sync_to_async
    def get_thread(self,user,other_username):
        return Thread.objects.get_or_new(user,other_username)[0]

    @database_sync_to_async
    def create_chat_message(self,msg):
        msg = msg[:1000]
        me             = self.scope['user']
        from_user  = self.scope['user']
        other_username = self.scope["url_route"]["kwargs"]["username"]
        other_user = User.objects.get(username=other_username)
        to_user=other_user
        msg = ceaser_chiper(msg,18)
        return Message.objects.create(from_user=from_user,user=me,message=msg,to_user=to_user,is_read=False)