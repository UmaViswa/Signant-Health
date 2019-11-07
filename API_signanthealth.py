import requests
import json

TOKEN="MzI5OTk2MzkyOTE1NDk4ODA0MTkxNzk2MTQ0OTk2MzQ3MTE1NjI3"
URL = "http://localhost:8080"

def get_usernames():
    header = {'Token': '%s'%TOKEN,'Content-Type': 'application/json'}
    r = requests.get(URL + '/api/users', headers=header)
    return r

def put_username():
    header = {'Token': '%s'%TOKEN,'Content-Type': 'application/json'}
    payload = {'firstname':'UmaMaheshwari', 'lastname': 'Viswanathan', 'phone':'1234'}
    r = requests.put( URL + '/api/users/asdf', headers = header, data = json.dumps(payload))
    return r


def get_userdetails():
    header = {'Token': '%s'%TOKEN,'Content-Type': 'application/json'}
    r = requests.get( URL + '/api/users/asdf', headers = header)
    return r

if __name__=="__main__":
    R = get_usernames()
    print R.content
    P = put_username()
    print P.content
    U = get_userdetails()
    print U.content
