from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
import os
import json
from datetime import datetime
import uvicorn
from pathlib import Path
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class Item(BaseModel):
    email: str
    recomendation: str

@app.post("/api/formsave")
async def create_item(item: Item):
    file_path = datetime.now().strftime("data_%Y-%m-%d_%H-%M-%S.json")
    print(item.dict())
    with open(file_path, "w", encoding="utf-8") as file:
        json.dump(item.dict(), file, ensure_ascii=False, indent=4)
    return {"message": "Data saved successfully!"}


if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=4322)
