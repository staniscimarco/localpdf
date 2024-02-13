New-Item -ItemType Directory -Force -Path ./models/llava

# Download the Mistral model into ./models/
Invoke-WebRequest -Uri "https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/blob/main/mistral-7b-instruct-v0.1.Q5_K_M.gguf?download=true" -OutFile "./models/mistral-7b-instruct-v0.1.Q5_K_M.gguf"

# Download the LLaVA models into ./models/llava/
Invoke-WebRequest -Uri "https://huggingface.co/mys/ggml_llava-v1.5-7b/resolve/main/ggml-model-q5_k.gguf?download=true" -OutFile "./models/llava/ggml-model-q5_k.gguf"
Invoke-WebRequest -Uri "https://huggingface.co/mys/ggml_llava-v1.5-7b/resolve/main/mmproj-model-f16.gguf?download=true" -OutFile "./models/llava/mmproj-model-f16.gguf"
