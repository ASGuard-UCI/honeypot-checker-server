import os

from fastapi import FastAPI, status

app = FastAPI()

@app.get('/', status_code=status.HTTP_200_OK)
async def root():
    status = os.system("systemctl is-active --quiet scapy-writer")
    return { "status": 1 if status == 0 else 0 }
