# WWII RAG Chatbot

A RAG (Retrieval-Augmented Generation) chatbot powered by n8n that answers questions about World War II using Wikipedia data. The bot uses Gemini for language generation and Pinecone for vector embeddings to provide accurate, context-aware responses.

## Features

- 💬 Intelligent Q&A about WWII historical events
- 🔍 RAG-based retrieval from Wikipedia articles
- 🤖 Powered by Google Gemini LLM
- 📊 Pinecone vector database for semantic search
- 🚀 Built with n8n workflow automation

## Quick Start with Docker

### Pull and Run (Recommended)

```bash
docker pull mohamedashraf273/ww2-rag-bot:latest
docker run -it --rm -p 5678:5678 mohamedashraf273/ww2-rag-bot:latest
```

Then open your browser at `http://localhost:5678`

### Build and Run Locally

```bash
# Clone the repository
git clone https://github.com/Mohamed-Ashraf273/ww2-rag-bot-n8n.git
cd ww2-rag-bot-n8n

# Build the Docker image
docker build -t ww2-rag-bot .

# Run the container
docker run -it --rm -p 5678:5678 ww2-rag-bot
```

## Configuration

The workflow is pre-imported and ready to use. After starting the container:

1. Open n8n at `http://localhost:5678`
2. Find the "WWII RAG Scholar" workflow
3. Activate the workflow
4. Configure your API keys for Gemini and Pinecone

## Tech Stack

- **n8n**: Workflow automation platform
- **Google Gemini**: LLM for generating responses
- **Pinecone**: Vector database for embeddings
- **Wikipedia**: Data source for WWII information
- **Docker**: Containerization

