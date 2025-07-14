#183. Customers Who Never Order
import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    count = orders.groupby('customerId')['id'].size().reset_index().rename(columns={'id':'count'})
    result = pd.merge(customers,count,how='left',left_on='id',right_on='customerId')
    result = result[result['count'].isna()][['name']].rename(columns={'name':'Customers'})
    return result