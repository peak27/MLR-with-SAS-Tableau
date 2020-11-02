# Import libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns

# Import Dataset
df = pd.read_csv('Caret.csv')

df.columns

df = pd.get_dummies(df, columns = ['cut', 'color'])
df = df.drop(columns = ['cut_Fair', 'color_J', 'clarity'])

df.to_csv(r'F:\Users\mjpk2\OneDrive\Desktop\Documents\Spring 2020\Stat - 450\Final Project\final diamonds.csv', index = False)