from keras.models import Sequential
from keras.layers import Dense
from sklearn.datasets import make_regression
from sklearn.preprocessing import MinMaxScaler
import numpy as np
from numpy import array
from numpy import savetxt
from numpy import genfromtxt
np.set_printoptions(suppress=True)


dataset_1 = genfromtxt('input.txt', delimiter=',')
dataset_2 = genfromtxt('target.txt', delimiter=',')
test_dataset = genfromtxt('test.txt', delimiter=',')

# split 
X = dataset_1
X = X[~np.isnan(X)]
X = np.reshape(X, (-1, 3)) 
y = dataset_2
y = y[~np.isnan(y)]
y = np.reshape(y, (-1, 3)) 
Xtest = test_dataset
Xtest = Xtest[~np.isnan(Xtest)]
Xtest = np.reshape(Xtest, (-1, 3)) 

# model definition
model = Sequential()
model.add(Dense(8, activation='relu'))
model.add(Dense(4, activation='relu'))
model.add(Dense(4, activation='relu'))
model.add(Dense(3, activation='linear')) 
model.compile(loss='mse', optimizer='adam') 
model.fit(X, y, epochs=5000, verbose=1)
Xnew = Xtest 
# make a prediction
ynew = model.predict(Xnew)

## show the inputs andoutput
freqs = ynew[:,0:1]
amps = ynew[:,1:2]
phases = ynew[:,2:3]

# freqs = Xtest[:,0:1]
# amps = Xtest[:,1:2]
# phases = Xtest[:,2:3]

freqs = np.reshape(freqs, (len(freqs)))
amps = np.reshape(amps, (len(amps))) 
phases = np.reshape(phases, (len(phases))) 

newamps = []
newfreqs = []
newphases = []

# get rid of the negative amps
for i in range(len(amps)): 
    if amps[i] > 0:
        newamps = np.append(newamps, amps[i])
        newfreqs = np.append(newfreqs, freqs[i])
        newphases = np.append(newphases, phases[i])     

np.savetxt('newfreqs0.txt', [newfreqs], delimiter=',', header='[', footer=']', comments = '', fmt='%f')
np.savetxt('newamps0.txt', [newamps], delimiter=',', header='[', footer=']', comments = '', fmt='%f')
np.savetxt('newphases0.txt', [newphases], delimiter=',', header='[', footer=']', comments = '', fmt='%f')
        
        
