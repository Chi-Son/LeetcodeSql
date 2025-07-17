#2356. Number of Unique Subjects Taught by Each Teacher
import pandas as pd

def count_unique_subjects(teacher: pd.DataFrame) -> pd.DataFrame:
    result = teacher.groupby('teacher_id')['subject_id'].nunique().reset_index().rename(columns={'subject_id':'cnt'})
    return result

#select  teacher_id ,count(distinct subject_id) as cnt from Teacher group by teacher_id