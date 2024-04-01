import os
from PyPDF2 import PdfReader


reader = PdfReader('data/WR-DN-2024.pdf')

print(reader.pages[0].extract_text())