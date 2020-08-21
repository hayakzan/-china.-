
import numpy as np
from keras.models import Sequential
from keras.layers import Dense
from sklearn.datasets import make_regression
from sklearn.preprocessing import MinMaxScaler
from numpy import array
from pythonosc.osc_server import AsyncIOOSCUDPServer
from pythonosc.dispatcher import Dispatcher
from osc import OSCMessage, OSCClient, OSCBundle
import asyncio


X = [1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.4, 1.3, 1.2, 1.1, 1.0, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.4, 1.3, 1.2, 1.1, 1.0 ] #also try with numpy array
y = [1.0, 2.1, 3.2, 4.3, 5.4, 6.5, 5.4, 4.3, 3.2, 2.1, 1.0, 1.0, 2.1, 3.2, 4.3, 5.4, 6.5, 5.4, 4.3, 3.2, 2.1, 1.0 ] 
Xnew = [1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.4, 1.3, 1.2, 1.1, 1.0, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.4, 1.3, 1.2, 1.1, 1.0 ]

#receive #not used 
def filter_handler(address, *args):
    print(f"{address}: {args}")
    Xnew.append(*args)
    print("Xnew: ", Xnew)
    
#listen
dispatcher = Dispatcher()
dispatcher.map("/chat", filter_handler)

ip = "127.0.0.1"
port = 8000

#send
message = OSCMessage(address='/chat')
client = OSCClient('127.0.0.1', 57120) #can be 57121, check in SC

# model definition
model = Sequential()
model.add(Dense(8, input_dim=1, activation='relu'))
model.add(Dense(4, activation='relu'))
model.add(Dense(2, activation='relu'))
model.add(Dense(1, activation='linear'))
model.compile(loss='mse', optimizer='adam')
model.fit(X, y, epochs=2000, verbose=0) 
ynew = model.predict(Xnew)
ynewer= ynew.tolist()
print(ynewer)

async def loop():
    for i in range(20):
        ynewind = ynewer[i]
# prediction
        print("ynewer[i]: ", ynewind[-1])
        message.add(abs(ynewind[-1])) 
        client.send(message)
        await asyncio.sleep(5)

async def init_main():
    server = AsyncIOOSCUDPServer((ip, port), dispatcher, asyncio.get_event_loop())
    transport, protocol = await server.create_serve_endpoint()  

    await loop()  

    transport.close()  # Clean up serve endpoint

asyncio.run(init_main())



