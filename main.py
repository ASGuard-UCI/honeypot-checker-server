import logging
import os

import uvicorn
from fastapi import FastAPI, status

app = FastAPI()


@app.get("/", status_code=status.HTTP_200_OK)
async def root():
    status = os.system("systemctl is-active --quiet scapy-writer")
    return {"status": 1 if status == 0 else 0}


if __name__ == "__main__":
    uvicorn.run(app, log_level=logging.WARN, host="0.0.0.0", port=80)
