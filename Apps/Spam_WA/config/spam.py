import pyautogui as spam
import time, os
from datetime import datetime
os.system("mode con: cols=48 lines=17")
def dir():
    os.chdir("C:\\Users\\Gas\\Desktop\\Tools")
    os.system("python Apps\\Spam_WA\\config\\spam.py")
def back():
    os.chdir("C:\\Users\\Gas\\Desktop\\Tools")
    os.system("Apps\\Spam_WA\\spam_wa.bat")

msg = input("\n * Masukan Pesan : ")

count=0
limit = int(input(" * Banyak Pesan : "))
print("\n[>] Pesan Akan Dikirim | Waktu 3 Detik")
time.sleep(3)
print("[!] Pesan Sudah Terkirim")

while count<int(limit):
    count+=1
    if count > limit:
        break
    spam.typewrite(msg)
    spam.press("enter")

while True:
    print("\n Mau Kembali? (y/n)")
    kembali = input("[>] ")

    if kembali == "y":
        print("Bye,have a good day")
        time.sleep(2)
        back()
    elif kembali == "n":
        dir()
    else:
        print("Input salah!")
