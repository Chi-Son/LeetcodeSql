import pandas as pd
#176. Second Highest Salary 
# Sql: Select (Select distinct salary from Employee order by salary desc limit 1 offset 1) as SecondHighestSalary
def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    result =employee[['salary']].drop_duplicates().sort_values(by='salary',ascending =False)
    if len(result)<2:
        return pd.DataFrame({"SecondHighestSalary":[None]})
    return pd.DataFrame({'SecondHighestSalary':result.iloc[1]})