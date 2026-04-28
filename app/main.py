from fastapi import FastAPI

app = FastAPI(title="DevOps Demo API", version="1.0.0")

@app.get("/")
def root():
    return {"message": "Hello from CI/CD pipeline!", "status": "ok"}

@app.get("/health")
def health():
    return {"status": "healthy"}


@app.get("/items/{item_id}")
def get_item(item_id: int, name: str = "unnamed"):
    return {"item_id": item_id, "name": name}