import pandas as pd

df = pd.read_csv(r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\atlas-de-riesgo-temperaturas-maximas.csv', encoding='latin-1')

df_geo_shape = df[['geo_shape']]

df_geo_shape.to_csv(r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\archivo_filtradotemp.csv', index=False)

print("Archivo guardado con solo la columna 'geo_shape'")


