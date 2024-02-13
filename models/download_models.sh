#!/bin/bash

# Create the directories if they do not exist
mkdir -p ./models/llava

# Download the Mistral model into ./models/
curl -L "https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/blob/main/mistral-7b-instruct-v0.1.Q5_K_M.gguf?download=true" -o ./models/mistral-7b-instruct-v0.1.Q5_K_M.gguf

# Download the LLaVA models into ./models/llava/
curl -L "https://huggingface.co/mys/ggml_llava-v1.5-7b/resolve/main/ggml-model-q5_k.gguf?download=true" -o ./models/llava/ggml-model-q5_k.gguf
curl -L "https://huggingface.co/mys/ggml_llava-v1.5-7b/resolve/main/mmproj-model-f16.gguf?download=true" -o ./models/llava/mmproj-model-f16.gguf
