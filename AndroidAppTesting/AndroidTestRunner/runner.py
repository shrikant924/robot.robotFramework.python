import os.path
from datetime import datetime

from robot import run


def runTest():
    reportDirectory = os.path.join('../AndroidTestResults/', datetime.now().strftime('%d-%m-%y_%H-%M-%S'))
    os.makedirs(reportDirectory)
    run('../AndroidTestSuite', outputdir=reportDirectory)


class runner:
    if __name__ == "__main__":
        runTest()
