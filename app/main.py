from fastapi import Depends, FastAPI, HTTPException

app = FastAPI()

# Route - Root
@app.get("/")
def read_root():
    return {"Hello" : "World"}