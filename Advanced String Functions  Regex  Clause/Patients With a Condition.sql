select patient_id, patient_name, conditions
from Patients
where left(conditions,5) = 'DIAB1' or conditions like '% DIAB1%'