#!/usr/bin/env python


# ## 1. import fruitDataset.csv
import os
import pandas as pd
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/scripts/rawData/")
ds = pd.read_csv('fruitDataset.csv')
ds = ds.drop('Unnamed: 0', axis=1)


# ## 2. split Train/Test Dataset
from sklearn.model_selection import train_test_split
target_name = 'Fruit'
X = ds.drop('Fruit', axis=1)
y = ds[target_name]
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.15, random_state=123, stratify=y)


# ## 3. fit the model
from sklearn import svm
clf = svm.SVC(C=10, kernel='linear', gamma='auto', random_state=1)
clf.fit(X_train, y_train)
predictions = clf.predict(X_test)
# print(predictions)

# step 1 to 3 for training my model_clf
# ==================================================================
# step 4 for obtaing new testing data to put into my model_clf

# ## 4. real-time prediction
# 4.1 import real-time rawData.csv
import glob
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/scripts/rawData_realtime/")
all_files = glob.glob("*.csv")
li = []
for filename in all_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    li.append(df)
frame = pd.concat(li, axis=0, ignore_index=True)
frame = frame.mask(frame>60000, 0)

# 4.2 do median() for rawData_realtime
row = list(range(0,len(frame),10))
df = []
for i in row:
    df_t = pd.concat([frame[i:i+10].median()], axis=1)
    df.append(df_t)
df = pd.concat(df, axis=1, ignore_index=True)
df = df.T
df_realtime = df.rename(columns={'Weight1':'W1', 'Weight2':'W2', 'Weight3':'W3'})
# print(df_realtime)

# 4.3 real-time prediction
import numpy as np
X_realTime = df_realtime
# print(type(X_realTime)) #<class 'pandas.core.frame.DataFrame'>
y_realTime = clf.predict(X_realTime)
# print(type(y_realTime))   #<type 'numpy.ndarray'>

realtime_predictions = np.int(y_realTime[0])
print(realtime_predictions)

exit()
