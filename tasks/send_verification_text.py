
import requests
from requests.auth import HTTPBasicAuth

username = "94a9963db8cd5423"
password = "ODM3NGRmODI4YmI0YTA4YWRhNDAyMTMyNGVhNzA3Yjg1M2RkMzczNzM3YzY5NTFmOTQyZWQ1YmVmMDA1ZWQxOQ=="
url = "https://apisms.beem.africa/v1/send"



def send_message(destination:int,message:str):
    data = {
        "source_addr": "SHIRIKISHO",
        "encoding": 0,
        "message": message,
        "recipients": [
            {
                "recipient_id": 1,
                "dest_addr": destination
            }
        ]
        }
    response = requests.post(url, json=data, auth=HTTPBasicAuth(username, password))

    if response.status_code == 200:
        print(response.text)
        print("SMS sent successfully!")
    else:
        print("SMS sending failed. Status code:", response.status_code)
        print("Response:", response.text)
# 
# 

