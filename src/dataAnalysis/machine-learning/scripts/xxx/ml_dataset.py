#!/usr/bin/env python

import os
import pandas as pd
import numpy as np
import glob

# ### 1.1 Import rawData
# rawData: others
# path = 'rawData/others/' # use your path
# all_files = glob.glob(path + "*.csv")
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/src/rawData")
all_files = glob.glob("others/*.csv")
li = []
for filename in all_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    li.append(df)
frame = pd.concat(li, axis=0, ignore_index=True)
frame = frame.mask(frame>60000, 0)
frame_others = frame.replace([np.nan], 0)

# rawData: appleRedFresh
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/src/rawData")
all_files = glob.glob("appleRedFresh/*.csv")
li = []
for filename in all_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    li.append(df)
frame = pd.concat(li, axis=0, ignore_index=True)
frame_appleRedFresh = frame.replace(np.nan, 10)

# rawData: appleRedAging
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/src/rawData")
all_files = glob.glob("appleRedAging/*.csv")
li = []
for filename in all_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    li.append(df)
frame = pd.concat(li, axis=0, ignore_index=True)
frame_appleRedAging = frame.replace(np.nan, 11)

# rawData: tomatoFresh
os.chdir("/home/ash/gripper_ws/src/dataAnalysis/machine-learning/src/rawData")
all_files = glob.glob("tomatoFresh/*.csv")
li = []
for filename in all_files:
    df = pd.read_csv(filename, index_col=None, header=0)
    li.append(df)
frame = pd.concat(li, axis=0, ignore_index=True)
frame_tomatoFresh = frame.replace(np.nan, 30)

# ### 1.2 Data Processing
# do median() for frame_others
row = list(range(0,len(frame_others),10))
df = []
for i in row:
    df_t = pd.concat([frame_others[i:i+10].median()], axis=1)
    df.append(df_t)
df = pd.concat(df, axis=1, ignore_index=True)
df = df.T
df = df.drop('ID',1)
df_others = df.rename(columns={'Weight1':'W1', 'Weight2':'W2', 'Weight3':'W3'})

# do median() for frame_appleRedFresh
row = list(range(0,len(frame_appleRedFresh),10))
df = []
for i in row:
    df_t = pd.concat([frame_appleRedFresh[i:i+10].median()], axis=1)
    df.append(df_t)
df = pd.concat(df, axis=1, ignore_index=True)
df = df.T
df = df.drop('ID',1)
df_appleRedFresh = df.rename(columns={'Weight1':'W1', 'Weight2':'W2', 'Weight3':'W3'})

# do median() for frame_appleRedAging
row = list(range(0,len(frame_appleRedAging),10))
df = []
for i in row:
    df_t = pd.concat([frame_appleRedAging[i:i+10].median()], axis=1)
    df.append(df_t)
df = pd.concat(df, axis=1, ignore_index=True)
df = df.T
df = df.drop('ID',1)
df_appleRedAging = df.rename(columns={'Weight1':'W1', 'Weight2':'W2', 'Weight3':'W3'})

# do median() for frame_tomatoFresh
row = list(range(0,len(frame_tomatoFresh),10))
df = []
for i in row:
    df_t = pd.concat([frame_tomatoFresh[i:i+10].median()], axis=1)
    df.append(df_t)
df = pd.concat(df, axis=1, ignore_index=True)
df = df.T
df = df.drop('ID',1)
df_tomatoFresh = df.rename(columns={'Weight1':'W1', 'Weight2':'W2', 'Weight3':'W3'})

# ### 1.3 Create dataset
ds = pd.concat([df_others, df_appleRedAging, df_appleRedFresh, df_tomatoFresh], axis=0)
ds.to_csv('fruitDataset.csv')

# ### 1.4 Train/Test Dataset
from sklearn.model_selection import train_test_split
target_name = 'Fruit'
X = ds.drop('Fruit', axis=1)
y = ds[target_name]
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.15, random_state=123, stratify=y)


# ### 1.5 Fit the Model
from sklearn import svm
clf = svm.SVC(kernel='linear', gamma='auto', C=0.5)
clf.fit(X_train, y_train)
predictions = clf.predict(X_test)


# ### 1.6 call functions
def call_predictions(X_realTime):
    clf = svm.SVC(kernel='linear', gamma='auto', C=0.5)
    clf.fit(X_train, y_train)
    predictions = clf.predict(X_realTime)
    print(predictions)
    return predictions
