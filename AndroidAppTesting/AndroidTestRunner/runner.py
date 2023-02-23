import os.path
from datetime import datetime

from robot import run

todayDate = datetime.now()
print(todayDate)
reportDirectory = os.path.join('../AndroidTestResults/', datetime.now().strftime('%Y-%m-%d_%H-%M-%S'))
os.makedirs(reportDirectory)
run('../AndroidTestSuite', outputdir=reportDirectory)
