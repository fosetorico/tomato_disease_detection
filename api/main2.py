from fastapi import FastAPI, File, UploadFile
from fastapi.middleware.cors import CORSMiddleware
import uvicorn
import numpy as np
from io import BytesIO
from PIL import Image
import tensorflow as tf
import tf_keras as keras
from typing import List

app = FastAPI()

origins = [
    "http://localhost",
    "http://localhost:3000",
]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

MODEL = keras.models.load_model("../saved_models/1")
CLASS_NAMES = ["Early Blight", "Late Blight", "Healthy"]


@app.get("/ping")
async def ping():
    return "Hello, I am alive"


def read_file_as_image(data) -> np.ndarray:
    image = np.array(Image.open(BytesIO(data)))
    return image


@app.post("/predict")
async def predict(
    file: UploadFile = File(...)
):
    image = read_file_as_image(await file.read())
    img_batch = np.expand_dims(image, axis=0)

    predictions = MODEL.predict(img_batch)

    predicted_class = CLASS_NAMES[np.argmax(predictions[0])]
    confidence = np.max(predictions[0])
    return {
        'class': predicted_class,
        'confidence': float(confidence)
    }


# @app.post("/predict")
# async def predict(files: List[UploadFile] = File(...)):
#     predictions = []
#     for file in files:
#         image = read_file_as_image(await file.read())
#         img_batch = np.expand_dims(image, axis=0)
#
#         prediction = MODEL.predict(img_batch)
#         predicted_class = CLASS_NAMES[np.argmax(prediction[0])]
#         confidence = np.max(prediction[0])
#         predictions.append({
#             'class': predicted_class,
#             'confidence': float(confidence)
#         })
#     return predictions

if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=8000)

