#177. Nth Highest Salary
import pandas as pd
import numpy as np
def nth_highest_salary(employee: pd.DataFrame, N: int) -> pd.DataFrame:
    result = employee[['salary']].drop_duplicates().sort_values(by='salary',ascending=False)
    if 0<N<= len(result):
        return result.iloc[[N-1]].rename(columns={'salary':f'getNthHighestSalary({N})'})
    return pd.DataFrame({f'getNthHighestSalary({N})': [np.nan]})