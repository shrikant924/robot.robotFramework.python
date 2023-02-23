import os.path
from datetime import datetime

from robot import run


def runTest():
    reportDirectory = os.path.join('../WebAppTestResults/', datetime.now().strftime('%d-%m-%y_%H-%M-%S'))
    os.makedirs(reportDirectory)
    run('../WebAppTestSuite', outputdir=reportDirectory)


def sendEmail():
    pass


class runner:
    if __name__ == "__main__":
        runTest()
