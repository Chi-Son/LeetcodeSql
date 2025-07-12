import pandas as pd
from datetime import  timedelta
#197. Rising Temperature
def rising_temperature(weather: pd.DataFrame) -> pd.DataFrame:
    weather['recordDate']=pd.to_datetime(weather['recordDate'])
    after = weather.copy()
    weather['pre_Date'] = weather['recordDate']- timedelta(days=1)
    weather= (pd.merge(weather,after,how='inner',left_on='pre_Date',right_on='recordDate')).rename(columns={'id_x':'id'})
    return weather[weather['temperature_x']>weather['temperature_y']][['id']]