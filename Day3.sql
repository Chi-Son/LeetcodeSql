/*181. Employees Earning More Than Their Managers*/
SELECT e.name as Employee From Employee e join Employee m on e.managerId =m.id where e.salary>m.salary

/*181. (Using pandas)
import pandas as pd

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    em= employee.copy()
    mng = employee.copy()
    result= pd.merge(em,mng,how='inner',left_on='managerId',right_on='id')
    result =result[(result['salary_x']>result['salary_y'])&(result['managerId_x']!= 'NULL')].rename(columns={'name_x':'Employee'})[['Employee']]
    return result
*/