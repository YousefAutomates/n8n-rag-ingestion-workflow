# 🤖 n8n RAG Ingestion Workflow - AI Document Processing System

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![n8n](https://img.shields.io/badge/n8n-workflow-FF6D5A?logo=n8n)](https://n8n.io)
[![YouTube Tutorial](https://img.shields.io/badge/YouTube-Tutorial-red?logo=youtube)](https://youtu.be/a2unzl4mNtA)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

> **Automated RAG (Retrieval-Augmented Generation) system built with n8n for intelligent document processing and vector storage.**

## 🌟 Overview

This n8n workflow automatically processes PDF documents uploaded to Google Drive, extracts text content, converts it into vector embeddings, and stores them in Supabase for semantic search and AI-powered retrieval.

Perfect for building:
- 📚 AI Knowledge Bases
- 🤖 Intelligent Chatbots
- 🔍 Semantic Search Systems
- 📖 Document Q&A Systems
- 💡 RAG Applications

---

## ✨ Features

- ✅ **Automatic File Monitoring** - Watches Google Drive folder for new PDFs
- 📄 **PDF Text Extraction** - Converts PDF documents to searchable text
- 🧩 **Smart Text Chunking** - Splits documents with overlap for better context
- 🔢 **Vector Embeddings** - Uses HuggingFace multilingual models
- 💾 **Vector Storage** - Stores in Supabase with pgvector
- 🌍 **Multilingual Support** - Works with Arabic, English, and more
- 🎓 **Beginner-Friendly** - Educational workflow with detailed documentation

---

## 🎥 Video Tutorial

**Watch the complete step-by-step guide:**

[![YouTube Tutorial](https://img.shields.io/badge/▶️_Watch_Tutorial-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtu.be/a2unzl4mNtA)

**What's covered:**
- RAG system fundamentals
- n8n workflow setup
- Vector embeddings explained
- Supabase configuration
- Production tips & optimization

---

## 🚀 Quick Start

### Prerequisites

Before you begin, ensure you have:

- ✅ [n8n](https://n8n.io/) instance (self-hosted or cloud)
- ✅ [Google Drive](https://drive.google.com/) account with API access
- ✅ [Supabase](https://supabase.com/) account (free tier works)
- ✅ [HuggingFace](https://huggingface.co/) API token (free)

### Installation Steps

#### 1️⃣ Clone Repository

```bash
git clone https://github.com/YousefAutomates/n8n-rag-ingestion-workflow.git
cd n8n-rag-ingestion-workflow
