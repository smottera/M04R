import os

x = os.listdir("ChaseBankStatements/")
#print(x)

#print(x[5])

import re
import PyPDF2

#file1 = open("ChaseBankStatements/"+x[5],'rb')
#pdf1 = PyPDF2.PdfFileReader(file1)
#string1 = ((pdf1.getPage(3)).extractText())
#print(string1.split("\n"))

#z = re.findall(r'[-][\d]+[.][\d]{2}',string1,re.I | re.M)
#print(z)


list1 = []
for items in x:
    file1 = open("ChaseBankStatements/" + items, 'rb')
    pdf1 = PyPDF2.PdfFileReader(file1)
    pageN = pdf1.getNumPages()
    #print(pageN)
    for i in range(1, pageN-1):
        string1 = ((pdf1.getPage(i)).extractText())
        print(string1)
        z = re.findall(r'[0-9]{2}/[0-9]{2}', string1, re.I | re.M)
        list1.append(z)

for items in list1:
    print(items)









#brittany allen
#Madelyn Brainard
#Erica Chadwell - cute, KD
#Julia Conversa
#Diana Suazo - fat
#Alyssa Tiffany-marie Tamvakis
#Anna Mae Renkel
#Maritza Janet Lopez
#Katie Lynn Myers - gay
#Varshini Srinivas
#Natalie Anne Scott
#Kennedy Sue Knowlton - fat
#Alexander Karol Pieprzycki

