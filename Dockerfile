# Imagem base com Python 3.9
FROM python:3.9-slim-buster

# Instalação do Jupyter Notebook, Pandas e Numpy
RUN pip install --no-cache-dir jupyter pandas numpy requests xlrd

# Define o diretório de trabalho
WORKDIR /app

# Copia o conteúdo local para o diretório de trabalho
COPY . /app

# Exponha a porta do Jupyter Notebook
EXPOSE 8888

# Inicie o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
