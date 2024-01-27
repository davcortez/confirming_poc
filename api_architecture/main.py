from fastapi import FastAPI
from mangum import Mangum
from schemas.operation import OperationSchema

app = FastAPI()
handler = Mangum(app)


@app.get("/")
async def hello():
    return {"message": "Testing negawatt"}


@app.post("/operation")
async def create_operation(OperationSchema: OperationSchema):
    return {"message": "Your operation was created"}
