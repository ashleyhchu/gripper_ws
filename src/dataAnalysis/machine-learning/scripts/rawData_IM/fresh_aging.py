#!/usr/bin/env python


## 1. import fruitDataset.csv
import os
import pandas as pd
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/src/rawData_IM/")
ds = pd.read_csv('imDataset.csv')
ds = ds.drop('Unnamed: 0', axis=1)


## 2. split Train/Test Dataset
from sklearn.model_selection import train_test_split
target_name = 'Tomato'
X = ds.drop(target_name, axis=1)
y = ds[target_name]
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=123, stratify=y)


## 3. fit the model
from sklearn import svm
clf = svm.SVC(kernel='linear', gamma='auto', C=0.5)
clf.fit(X_train, y_train)
predictions = clf.predict(X_test)


## 4. newData prediction
# 4.1 import new newData
import glob
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/src/rawData_IM/newData/")
filename = "000.csv"
frame = pd.read_csv( filename)
frame = frame.drop(['F (Hz)','F (Hz).1'], axis=1)
frame = frame[18:]
frame = frame.reset_index(drop=True)

# 4.2 do mean() for new rawData
frame_meanZ = frame.iloc[:, 0].mean()
frame_meanT = frame.iloc[:, 1].mean()
# df_new = [frame_meanZ, frame_meanT]
df_new = {'|Z|': pd.Series(frame_meanZ), 'Theta': pd.Series(frame_meanT)}
df_new = pd.DataFrame(df_new)

# 4.3 new rawData prediction
import numpy as np
X_new = df_new
y_new = clf.predict(X_new)
new_predictions = np.int(y_new[0])
print(new_predictions)

exit()
