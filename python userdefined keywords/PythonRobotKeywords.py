import os

def create_folder():
    # the 'os' package can be used to perform os related operation
    os.mkdir("D:\Demo")

def subfolder():
    os.mkdir("D:\Demo\subfolder")

def argfolder(foldername):
    os.mkdir(f"D:\Demo\{foldername}")


def concatinate(val1, val2):
    val3 = val1 + val2
    return val3