import pandas as pd
#511. Game Play Analysis I
def game_analysis (activity: pd.DataFrame) -> pd.DataFrame:
    result= (activity.groupby('player_id')['event_date']
             .min().reset_index()
             .rename(columns={'event_date':'first_login'}))
    return result

#175. Combine Two Tables
def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    result= (pd.merge(person, address, how='inner', on='personId'))[['firstName','lastName','city','state']]
    return result

#1757. Recyclable and Low Fat Products
# select product_id from Products where low_fats = 'Y' and recyclable = 'Y';
def recyclable_lowfatproducts(products:pd.DataFrame)-> pd.DataFrame:
    result = products[(products['low_fats']=='Y')&(products['recyclable']=='Y')][['product_id']]
    return result