import pandas as pd
import os

# Lista de archivos CSV especificados manualmente
archivos = [
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202401010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202402010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202403010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202404010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202405010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202406010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202407010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202408010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202409010000Lluv_CDMX.csv',
    r'C:\Users\Daniel Garcia\Documents\•Proyecto Huerto\precipitacion\CDMX\202410010000Lluv_CDMX.csv'
]

dataframes = []

for file in archivos:
    # Carga el archivo en un DataFrame y selecciona solo las columnas necesarias
    df = pd.read_csv(file, usecols=["longitud", "latitud", "mes"])
    dataframes.append(df)

# Concatena todos los DataFrames en uno solo
df_concat = pd.concat(dataframes, ignore_index=True)

# Elimina filas con datos faltantes
df_concat.dropna(inplace=True)

# Guarda el archivo concatenado en un nuevo CSV
df_concat.to_csv('/ruta/a/tu/carpeta/archivo_concatenado.csv', index=False)
